#include "ban.h"

bool Ban::_check_inconsistency(int p, const T num[SIZE]){

	if(num[0] != 0)
		return false;

	if(p != 0)
		return true;

	for(unsigned i=1; i<SIZE; ++i)
		if(num[i])
			return true;
	
	return false;
}

// body of any constructor
void Ban::init(int p, const T num[SIZE]){
	this->p = p;
	for(unsigned i=0; i<SIZE; ++i)
		this->num[i] = num[i];
}

// boolean value used only for disambiguation
Ban::Ban(int p, const T num[SIZE], bool check){
	init(p, num);
}

Ban::Ban(int p, const T num[SIZE]){

	if(_check_inconsistency(p, num))
		throw invalid_argument("Inconsistent input for Ban.");

	init(p, num);

}

Ban::Ban(T n){
	p = 0;
	num[0] = n;
	for(unsigned i=1; i<SIZE; ++i)
		num[i] = 0;
}

bool Ban::operator==(const Ban &b) const{
	if(p != b.p)
		return false;
	
	for(unsigned i=0; i<SIZE; ++i)
		if(num[i] != b.num[i])
			return false;
	
	return true;
}

bool Ban::operator==(T n) const{
	if(p != 0 || num[0] != n)
		return false;
	
	for(unsigned i=0; i<SIZE; ++i)
		if(num[i] != 0)
			return false;
	
	return true;
}

// bring a Ban to normal form
void Ban::to_normal_form(){
	if(num[0] != 0)
		return;
	
	// idx memorizes the entry which must be shifted as first
	unsigned idx = 0;
	while(idx<SIZE)
		if(num[++idx] != 0)
			break;
	
	// execute the left-to-right shift
	// zeroing the shifted entries
	unsigned base = 0;
	while(idx < SIZE){
		num[base++] = num[idx];
		num[idx++] = 0;
	}

	// base now memorizes how many shift has been executed
	// if base == 0, then the inconsistency was on p
	if(base == 0)
		p = 0;
	else
		p += base - SIZE; // equivalent to -= SIZE-base;

	return;
}

Ban Ban::_sum(const Ban &a, const Ban &b, int diff_p){
	Ban c(a);
	
	for(unsigned i=diff_p; i<SIZE; ++i)
		c.num[i] += b.num[i-diff_p];

	if(diff_p == 0)
		c.to_normal_form();

	return c;

}

Ban Ban::operator+(const Ban &b) const{
	// check sum with zero to avoid precision loss
	// example: 0 + η^5  = 0 if SIZE <= 5
	if(*this == 0)
		return b;
	
	if(b == 0)
		return *this;

	int diff_p = p - b.p;

	// if the numbers are too different the precision is not enough to compute the sum
	if(diff_p >= SIZE)
		return *this;

	if(diff_p <= -SIZE)
		return b;

	// code implementation only for one scenario
	if(diff_p < 0)
		return _sum(b, *this, -diff_p);
	
	return _sum(*this, b, diff_p);		
}

Ban Ban::operator-() const{
	Ban b(*this);
	for(unsigned i=0; i<SIZE; ++i)
		b.num[i] *= -1;
	
	return b;
}

Ban Ban::operator-(const Ban &b) const{
	return *this+(-b);
}

void Ban::_mul(const T num_a[SIZE], const T num_b[SIZE], T num_res[SIZE]){
	for(unsigned i=0; i<SIZE; ++i)
		num_res[i] = 0;
	
	for(unsigned i=0; i<SIZE; ++i)
		for(unsigned j=0; j<SIZE-i; ++j)
			num_res[i+j] += num_a[i]*num_b[j];
}

Ban Ban::operator*(const Ban &b) const{
	// introduced for speed-up
	if(*this == 0 || b == 0)
		return 0;

	T num_res[SIZE];
	_mul(num, b.num, num_res);
	
	Ban c(p+b.p, num_res, false);
	// necessity to check normal form
	// otherwise: (1e-170*α)*(1e-170*α) = α^2(0+0...)
	c.to_normal_form();

	return c;
}

Ban Ban::operator/(const Ban &b) const{
	// check division by/of zero
	if(b == 0)
		throw domain_error("division by zero detected");

	if(*this == 0)
		return 0;

	Ban c(*this);
	c.p -= b.p;

	T normalizer = b.num[0];
	T b_norm[SIZE], eps[SIZE], eps_tmp[SIZE];
	b_norm[0] = 0;
	for(unsigned i=1; i<SIZE; ++i)
		b_norm[i] = -b.num[i]/normalizer;
	
	_mul(b_norm, this->num, eps);
	
	for(unsigned i=0; i<SIZE; ++i)
		c.num[i] += eps[i]; // vectorial sum
	
	// unrolling of the outer loop to speed up
	for(unsigned j=1; j<SIZE/2; ++j){
		_mul(eps, b_norm, eps_tmp);
		for(unsigned i=0; i<SIZE; ++i)
			c.num[i] += eps_tmp[i]; // vectorial sum

		_mul(eps_tmp, b_norm, eps);
		for(unsigned i=0; i<SIZE; ++i)
			c.num[i] += eps[i]; // vectorial sum
	}

	// necessary due to unrolling in case SIZE is even
	if constexpr (EVEN_SIZE){
		_mul(eps, b_norm, eps_tmp);
		for(unsigned i=0; i<SIZE; ++i)
			c.num[i] += eps_tmp[i]; // vectorial sum
	}

	for(unsigned i=0; i<SIZE; ++i)
		c.num[i] /= normalizer; // element-wise division by a real

	return c;
}

ostream& operator<<(ostream& os, const Ban &b){
	os<<"α^"<<b.p<<'('<<b.num[0];
	for(unsigned i=1; i<SIZE; ++i)
		if(b.num[i] >= 0)
			os<<" + "<<b.num[i]<<"η^"<<i;
		else
			os<<" - "<<-b.num[i]<<"η^"<<i;

	os<<')';
	
	return os;
}

bool Ban::operator<(const Ban &b) const{
	if(p < b.p){
		if(b.num[0] > 0 || (b.num[0] == 0 && num[0] < 0))
			return true;
		
		return false;
	}

	if(p > b.p){
		if(num[0] < 0 || (num[0] == 0 && b.num[0] > 0))
			return true;

		return false;
	}

	for(unsigned i=0; i<SIZE; ++i){
		if(num[i] < b.num[i])
			return true;
		
		if(num[i] > b.num[i])
			return false;
	}

	return false;
}

Ban Ban::abs() const{
	if(num[0] >= 0)
		return *this;

	Ban res(*this);
	for(unsigned i=0; i<SIZE; ++i)
		res.num[i] *= -1;

	return res;
}

Ban Ban::sqrt() const{
	if(*this < 0)
		throw domain_error("Square root of negative number cannot be computed.");

	if(p%2 != 0)
		throw domain_error("Impossibile to compute square root of odd magnitude Ban.");

	if(*this == 0 || *this == 1)
		return *this;

	T normalizer;
	normalizer = sqrt(num[0]); // sqrt(3.0);
	T num_res[SIZE], eps_1[SIZE], eps_2[SIZE], eps_3[SIZE];
	num_res[0] = 1;
	eps_1[0] = eps_2[0] = 0;
	for(unsigned i=1; i<SIZE; ++i){
		eps_1[i] = eps_2[i] = -num[i]/normalizer;
		num_res[i] = 0.5*eps_1[i];
	}
	
	if constexpr (SIZE >= 8)
		throw length_error("Square root for Ban7 not implmented yet.");

	if constexpr (SIZE > 3){
		unsigned i=0;
		while(i<SIZE-3){
			_mul(eps_1, eps_2, eps_3);
			for(unsigned j=0; j<SIZE; j++){
				num_res[j] += sqrt_exp[i]*eps_3[j]; // vectorial sum
			}
			++i;
			_mul(eps_3, eps_2, eps_1);
			for(unsigned j=0; j<SIZE; j++){
				num_res[j] += sqrt_exp[i]*eps_1[j]; // vectorial sum
			}
			++i;
		}

		if constexpr(!EVEN_SIZE){
			_mul(eps_1, eps_2, eps_3);
			for(unsigned j=0; j<SIZE; j++){
				num_res[j] += sqrt_exp[i]*eps_3[j]; // vectorial sum
			}
		}
	}
	else{
		if constexpr(SIZE == 3){
			for(unsigned i=1; i<SIZE-1; ++i){
				_mul(eps_1, eps_2, eps_3);
				for(unsigned j=0; j<SIZE; j++)
					num_res[j] += sqrt_exp[0]*eps_3[j]; // vectorial sum
			}
		}
	}

	for (unsigned i=0; i<SIZE; ++i)
		num_res[i] *= normalizer;

	return Ban(p/2, num_res);
}