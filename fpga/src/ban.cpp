#include "ban.h"

bool Ban::_check_inconsistency(int p, const T num[SIZE]){

	if(num[0]) // num[0] != 0
		return false;

	if(p) // p != 0
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
	
	#ifndef FPGA_HLS
	if(_check_inconsistency(p, num))
		throw invalid_argument("Inconsistent input for Ban.");
	#endif
	
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
	
	bool res = true;
	for(unsigned i=0; i<SIZE; ++i)
		if(res && (num[i] != b.num[i])) // res == true
			res = false;
	
	return res;
}

bool Ban::operator==(T n) const{
	if(p || num[0] != n) // p != 0
		return false;
	
	if(!n) // n==0, leverages assumption of normal form
		return true;

	bool res = true;
	for(unsigned i=1; i<SIZE; ++i)
		if(res && num[i])  // res == true && num[i] != 0
			res = false;
	
	return res;
}

// bring a Ban to normal form
void Ban::to_normal_form(){
	if(num[0]) // num[0] != 0
		return;
	
	// idx memorizes the entry which must be shifted as first
	unsigned idx = 1;
	unsigned idx_tmp = 0; //necessarily to know a priori next loop length

	while(idx<SIZE)
		if(!idx_tmp && num[idx++]) // num[idx++] != 0 && idx == 0, i.e., never found a nonzero entry
			idx_tmp = idx;

	idx = idx_tmp;
	
	// execute the left-to-right shift
	unsigned base = 0;
	while(idx < SIZE)
		num[base++] = num[idx++];

	// base now memorizes how many shift has been executed
	// if base == 0, then the inconsistency was on p
	if(!base) // base == 0
		p = 0;
	else{
		int tmp = p + base - SIZE; // equivalent to -= SIZE-base;
		p = tmp; 
	}
	// zeroing the shifted entries
	while(base<SIZE)
		num[base++] = 0;

	return;
}

Ban Ban::_sum(const Ban &a, const Ban &b, int diff_p){
	Ban c(a);
	T tmp;
	
	for(unsigned i=0; i<SIZE; ++i){
		#pragma HLS UNROLL
		if(i>=diff_p){
			tmp = c.num[i] + b.num[i-diff_p];
			c.num[i] = tmp;
		}
	}

	if(!diff_p) // diff_p == 0
		c.to_normal_form();

	return c;

}

Ban Ban::operator+(const Ban &b) const{
	// check sum with zero to avoid precision loss
	// example: 0 + η^5  = 0 if SIZE <= 5
	if(*this  == 0) // *this == 0
		return b;
	
	if(b == 0) //b == 0
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
	T tmp;
	for(unsigned i=0; i<SIZE; ++i){
		#pragma HLS UNROLL
		tmp = b.num[i] * -1;
		b.num[i] = tmp;
	}
	
	return b;
}

void Ban::_mul_conv(const T num_a[SIZE], const T num_b[SIZE], T aux[(SIZE<<1)-1]){
	T tmp = 0, tmp2;

	for(unsigned i=0; i<(SIZE<<1)-1; ++i){
		for(unsigned j=0; j<SIZE; ++j){
			#pragma HLS UNROLL
				if((i-j)>=0 && (i-j)<SIZE){
					tmp2 = tmp + num_a[i-j]*num_b[j];
					tmp = tmp2;
				}
		}
		aux[i] = tmp;
		tmp = 0;
	}
}

void Ban::_mul(const T num_a[SIZE], const T num_b[SIZE], T num_res[SIZE]){
	T aux[(SIZE<<1)-1];

	_mul_conv(num_a, num_b, aux);

	for(unsigned i=0; i<SIZE; ++i)
		num_res[i] = aux[i];
}

Ban Ban::mul_body(const Ban &b) const{
	T num_res[SIZE];
	_mul(num, b.num, num_res);
	
	Ban c(p+b.p, num_res, false);
	// necessity to check normal form
	// otherwise: (1e-170*α)*(1e-170*α) = α^2(0+0...)
	c.to_normal_form();

	return c;
}

Ban Ban::operator*(const Ban &b) const{
	// introduced for speed-up
	if(*this  == 0 || b == 0) // *this == 0 || b == 0
		return ZERO;

	return this->mul_body(b);
}

void Ban::_div_body(const T num_num[SIZE], const T num_den[SIZE], T num_res[SIZE]){
	T normalizer = num_den[0];
	T den_norm[SIZE], eps[SIZE], eps_tmp[SIZE];
	den_norm[0] = 0;
	for(unsigned i=1; i<SIZE; ++i)
		den_norm[i] = -num_den[i]/normalizer;
	
	_mul(den_norm, num_num, eps);
	T tmp;
	for(unsigned i=0; i<SIZE; ++i){
		#pragma HLS UNROLL
		tmp = num_res[i] + eps[i]; // vectorial sum
		num_res[i] = tmp;
	}

	// unrolling of the outer loop to speed up
	for(unsigned j=1; j<=((SIZE-1)>>1); ++j){
		_mul(eps, den_norm, eps_tmp);
		for(unsigned i=0; i<SIZE; ++i){
			#pragma HLS UNROLL
			tmp = num_res[i] + eps_tmp[i]; // vectorial sum
			num_res[i] = tmp;
		}

		_mul(eps_tmp, den_norm, eps);
		for(unsigned i=0; i<SIZE; ++i){
			#pragma HLS UNROLL
			tmp = num_res[i] + eps[i]; // vectorial sum
			num_res[i] = tmp;
		}
	}

	// necessary due to unrolling in case SIZE is even
	#if EVEN_SIZE
		_mul(eps, den_norm, eps_tmp);
		for(unsigned i=0; i<SIZE; ++i){
			#pragma HLS UNROLL
			tmp = num_res[i] + eps_tmp[i]; // vectorial sum
			num_res[i] = tmp;
		}
	#endif

	for(unsigned i=0; i<SIZE; ++i){
		#pragma HLS UNROLL
		tmp = num_res[i] / normalizer; // element-wise division by a real
		num_res[i] = tmp;
	}
}

Ban Ban::operator/(const Ban &b) const{
	// check division by/of zero
	#ifndef FPGA_HLS
	if(b == 0) // b == 0
		throw domain_error("division by zero detected");
	#endif

	if(*this  == 0) // *this == 0
		return ZERO;

	Ban c(*this);

	c.p -= b.p;

	_div_body(this->num, b.num, c.num);

	c.to_normal_form();

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

// readable implementation of file writing
/*
ofstream& operator<<(ofstream& os, const Ban &b){
	os<<"α^"<<b.p<<'('<<b.num[0];
	for(unsigned i=1; i<SIZE; ++i)
		if(b.num[i] >= 0)
			os<<" + "<<b.num[i]<<"η^"<<i;
		else
			os<<" - "<<-b.num[i]<<"η^"<<i;
	os<<")";
	
	return os;
}
*/

// file writing implementation for tests
ofstream& operator<<(ofstream& os, const Ban &b){
	os<<scientific<<setprecision(6);
	os<<" "<<b.p<<" "<<b.num[0]; //initial space because disambiguation
	for(unsigned i=1; i<SIZE; ++i)
			os<<" "<<b.num[i];
	
	return os;
}

bool Ban::operator<(const Ban &b) const{
	if(p < b.p){
		if(b.num[0] > 0 || (!b.num[0] && num[0] < 0))  // b.num[0] == 0
			return true;
		
		return false;
	}

	if(p > b.p){
		if(num[0] < 0 || (!num[0] && b.num[0] > 0))  // num[0] == 0
			return true;

		return false;
	}

	bool res = false, solved = false;
	for(unsigned i=0; i<SIZE; ++i){
		if(!solved && num[i] < b.num[i]){
			res = true;
			solved = true;
		}
		
		if(!solved && num[i] > b.num[i])
			solved = true;
	}

	return res;
}

bool Ban::operator<(T n) const{
	if(p > 0){
		if(num[0] < 0)
			return true;
		return false;
	}

	if(p < 0){
		if(n > 0)
			return true;
		if(n < 0)
			return false;
		// here iff n == 0
		if(num[0] < 0)
			return true;
		
		return false;
	}
	// here iff p == 0, so comparison among finite numbers
	if(num[0] < n)
		return true;
	if(num[0] > n)
		return false;

	bool res = false, solved = false;
	// num[0] == n, infinitesimal components are crucial
	for(unsigned i=1; i<SIZE; ++i)
		if(!solved && num[i]){  // solved == false && num[i] != 0
			solved = true;
			if(num[i] < 0)
				res = true;
		}
	// here also in case *this == n
	return res;
}

bool operator<(T n, const Ban &b){
	if(b.p > 0){
		if(b.num[0] > 0)
			return true;
		return false;
	}

	if(b.p < 0){
		if(n < 0)
			return true;
		if(n > 0)
			return false;
		// here iff n == 0
		if(b.num[0] > 0)
			return true;
		
		return false;
	}
	// here iff p == 0, so comparison among finite numbers
	if(b.num[0] > n)
		return true;
	if(b.num[0] < n)
		return false;

	bool res = false, solved = false;
	// num[0] == n, infinitesimal components are crucial
	for(unsigned i=1; i<SIZE; ++i)
		if(!solved && b.num[i]){  // solved == false && b.num[i] != 0
			solved = true;
			if(b.num[i] > 0)
				res = true;
		}
	// here iff *this == n
	return res;
}

Ban abs(const Ban &b){
	if(b.num[0] >= 0)
		return b;

	return -b;
}

Ban sqrt(const Ban &b){
	#ifndef FPGA_HLS
	if(b < 0)
		throw domain_error("Square root of negative number cannot be computed.");

	if(b.p & 1u)
		throw domain_error("Impossible to compute square root of odd magnitude Ban.");
	#endif

	if(b == 0 || b == 1)  // b == 0
		return b;

	T normalizer;
	normalizer = b.num[0];
	T num_res[SIZE], eps_1[SIZE], eps_2[SIZE], eps_3[SIZE];
	num_res[0] = 1;
	eps_1[0] = eps_2[0] = 0;
	for(unsigned i=1; i<SIZE; ++i){
		eps_1[i] = eps_2[i] = b.num[i]/normalizer;
		num_res[i] = 0.5*eps_1[i];
	}
	
	#ifndef FPGA_HLS
		#if SIZE >= 8
			throw length_error("Square root for Ban7 not implmented yet.");
		#endif
	#endif

	T tmp;
	#if SIZE > 3
		unsigned i=0;
		while(i<SIZE-3){
			Ban::_mul(eps_1, eps_2, eps_3);
			for(unsigned j=0; j<SIZE; j++){
				#pragma HLS UNROLL
				tmp = num_res[j] + sqrt_exp[i]*eps_3[j]; // vectorial sum
				num_res[j] = tmp;
			}
			++i;
			Ban::_mul(eps_3, eps_2, eps_1);
			for(unsigned j=0; j<SIZE; j++){
				#pragma HLS UNROLL
				tmp = num_res[j] + sqrt_exp[i]*eps_1[j]; // vectorial sum
				num_res[j] = tmp;
			}
			++i;
		}

		#if !EVEN_SIZE
			Ban::_mul(eps_1, eps_2, eps_3);
			for(unsigned j=0; j<SIZE; j++){
				#pragma HLS UNROLL
				tmp = num_res[j] + sqrt_exp[i]*eps_3[j]; // vectorial sum
				num_res[j] = tmp;
			}
		#endif
	#else
		#if SIZE == 3
			Ban::_mul(eps_1, eps_2, eps_3);
			for(unsigned j=0; j<3; j++){
				#pragma HLS UNROLL
				tmp = num_res[j] + sqrt_exp[0]*eps_3[j]; // vectorial sum
				num_res[j] = tmp;
			}
		#endif
	#endif

	normalizer = sqrt(normalizer);

	for (unsigned i=0; i<SIZE; ++i){
		#pragma HLS UNROLL
		tmp = num_res[i] * normalizer;
		num_res[i] = tmp;
	}

	return Ban(b.p>>1, num_res);
}

void Ban::sum_infinitesimal_real(T num_res[SIZE], T n) const{
	for(unsigned i=SIZE-1; i>0; --i)
		// right-shifting the most significant part of *this by -p
		if(i>=-p)
			num_res[i] = num[i+p];

		// zero padding until first monosemium
		else
			num_res[i] = 0;

	num_res[0] = n;
}

Ban Ban::operator+(T n) const{
	// check sum with zero to avoid precision loss
	// example: η^5 + 0  = 0 if SIZE <= 5
	if(!n)  // n == 0
		return *this;

	if(p >= 0){
		Ban res(*this);
		// *this too big to be affected by n
		if(p-SIZE >= 0)
			return res;

		/*
		T tmp = res.num[p] + n;
		res.num[p]  = tmp;
		*/
		res.num[p] += n;
		res.to_normal_form();

		return res;
	}

	T num_res[SIZE];
	this->sum_infinitesimal_real(num_res, n);

	return Ban(0, num_res);
}

Ban Ban::operator*(T n) const{
	/*
	// true speedup ?
	if(n == 0 || *this == 0)
		return ZERO;
	*/

	Ban res(*this);
	T tmp;
	for(unsigned i=0; i<SIZE; ++i){
		#pragma HLS UNROLL
		tmp = res.num[i] * n;
		res.num[i] = tmp;
	}
	
	res.to_normal_form();

	return res;
}

Ban Ban::operator/(T n) const{
	#ifndef FPGA_HLS
	if(!n)  // n == 0
		throw domain_error("division by zero detected");
	#endif

	if(*this  == 0)  // *this == 0
		return ZERO;

	Ban res(*this);
	T tmp;
	for(unsigned i=0; i<SIZE; ++i){
		#pragma HLS UNROLL
		tmp = res.num[i] / n;
		res.num[i] = tmp;
	}
	
	res.to_normal_form();

	return res;
}

// Check which implementation of pow is faster
// I guess the current one is for small powers
// Because prevents a lot of multiplications by ONE
// Moreover, this version avoids input check of operator*
// This code can be further improved avoiding the instantiation
// of a new Ban each time and computing the final power in pow.
// However, this may result in a loss of precision in very rare cases
Ban Ban::_pow_fast(const Ban &b, unsigned e){
	if(e == 1)
		return b;
	
	if(e == 2)
		return b.mul_body(b);

	Ban res = _pow_fast(b, e>>1);

	if(e & 1u)
		return b.mul_body(res).mul_body(res);
	
	return res.mul_body(res);

}

Ban pow(const Ban &b, int e){
	if(b == 0){  // b == 0
		if(e > 0)
			return ZERO;
		#ifndef FPGA_HLS
		if(e < 0)
			throw invalid_argument("Exponentiation of 0 with negative power not implemented yet");
		#endif
		return ONE;
	}

	if(b == 1)
		return ONE;

	if(e < 0)
		 return Ban::_pow_fast(1/b, -e);

	return Ban::_pow_fast(b, e);
}

// Old implementation of pow which uses full multiplcation
/*
Ban Ban::_pow_fast(const Ban &b, unsigned e){
	if(e == 1)
		return b;
	
	if(e == 2)
		return b*b;
	Ban res = _pow_fast(b, e>>1);
	if(e & 1u)
		return b*res*res;
	
	return res*res;
}
Ban pow(const Ban &b, int e){
	if(b == 0){
		if(e > 0)
			return ZERO;
		if(e < 0)
			throw invalid_argument("Exponentiation of 0 with negative power not implemented yet");
		return ONE;
	}
	if(b == 1)
		return ONE;
	if(e < 0)
		 return Ban::_pow_fast(1/b, -e);
	return Ban::_pow_fast(b, e);
}
*/

// Other possible implementation of pow
/*
Ban Ban::_pow_fast(const Ban &b, unsigned e){
	if(e == 0)
		return ONE;
	Ban res = _pow_fast_(b, e>>1);
	if(e & 1u)	
		return b*res*res;
	
	return res*res;
}
	
Ban pow(const Ban &b, int e){
	if(b == 0){
		if(e > 0)
			return ZERO;
		if(e < 0)
			throw invalid_argument("Exponentiation of 0 with negative power not implemented yet");
		return ONE;
	}
	if(b == 1)
		return ONE;
	
	if(e < 0){
		Ban inv_b = 1/b;
		Ban res = Ban::_pow_fast(1/b, -e);
		if(e & 1u)
			return inv_b*res*res;
		
		return res*res;
	}
	Ban res = Ban::_pow_fast_(b, e>>1);	
	
	if(e & 1u)
		return b*res*res;
	
	return res*res;
}
*/

// only for BanInt
/*
Ban Ban::operator>>(unsigned i) const{
	Ban res(*this);
	for(unsigned j=0; j<SIZE; ++j)
		res.num[j]>>i;
	
	return res;
}
Ban Ban::operator<<(unsigned i) const{
	Ban res(*this);
	for(unsigned j=0; j<SIZE; ++j)
		res.num[j]<<i;
	
	return res;
}
*/
