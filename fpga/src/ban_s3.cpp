// Assumed constant SIZE = 3
#include "ban_s3.h"
Ban::Ban(int p, const T num[SIZE]){
	this->p = p;
	this->num[0] = num[0];
	this->num[1] = num[1];
	this->num[2] = num[2];
}

Ban::Ban(T n){
	p = 0;
	num[0] = n;
	num[1] = 0;
	num[2] = 0;
}

bool Ban::operator==(const Ban &b) const{	
	return ( p == b.p && (num[0] == b.num[0]) && (num[1] == b.num[1]) && (num[2] == b.num[2]) ); // same powers and all entries equal
}

bool Ban::operator==(T n) const{
	return ((p == 0) && (num[0] == n) && (num[1] == 0) && (num[2] == 0)); //( !(p || num[0] != n) ) && !( num[1] || num[2] ); // at least one nonzero
}

// bring a Ban to normal form
void Ban::to_normal_form(){
	if(num[0]) // num[0] != 0
		return;

	if(num[1]){ // num[1] != 0
		num[0] = num[1];
		num[1] = num[2];
		num[2] = 0;
		p -= 1;
		return;
	}

	if(num[2]){ // num[2] != 0
		num[0] = num[2];
		num[2] = 0;
		p -= 2;
		return;
	}

	// all zero
	p = 0;
	return;
}

Ban Ban::_sum(const Ban &a, const Ban &b, int diff_p){
	Ban c(a);

	switch (diff_p){
		case 1:
			c.num[1] += b.num[0];
			c.num[2] += b.num[1];
			break;

		case 2:
			c.num[2] += b.num[0];
			break;
		
		default:
			c.num[0] += b.num[0];
			c.num[1] += b.num[1];
			c.num[2] += b.num[2];
			c.to_normal_form();
			break;
	}

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
	b.num[0] *= -1;
	b.num[1] *= -1;
	b.num[2] *= -1;
	
	return b;
}

void Ban::_mul(const T num_a[SIZE], const T num_b[SIZE], T num_res[SIZE]){
	num_res[0] = num_a[0] * num_b[0];
	num_res[1] = num_a[1] * num_b[0] + num_a[0] * num_b[1];
	num_res[2] = num_a[2] * num_b[0] + num_a[0] * num_b[2] + num_a[1] * num_b[1];
}

Ban Ban::operator*(const Ban &b) const{
	T num_res[SIZE];
	_mul(num, b.num, num_res);
	
	Ban c(p+b.p, num_res); // in case of consistency checks add a bool as last argument
	// necessity to check normal form
	// otherwise: (1e-170*α)*(1e-170*α) = α^2(0+0...)
	c.to_normal_form();

	return c;
}

Ban Ban::operator/(const Ban &b) const{
	if(*this == 0)
		return ZERO;
	
	T num_res[SIZE];
	num_res[0] = num[0]/b.num[0];
	num_res[1] = (num[1] - num_res[0]*b.num[1])/b.num[0];
	num_res[2] = (num[2] - num_res[0]*b.num[2] - num_res[1]*b.num[1])/b.num[0];

	Ban c(p-b.p, num_res, false);

	c.to_normal_form();

	return c;
}

Ban operator/(T n, const Ban &b){

	T num2 = -b.num[1]/b.num[0];
	T num[] = {n/b.num[0], n*num2/b.num[0], n*(-b.num[2]/b.num[0]+num2*num2)/b.num[0]};

	Ban c(-b.p, num, false);

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

// file writing implementation for tests
ofstream& operator<<(ofstream& os, const Ban &b){
	os<<scientific<<setprecision(6);
	os<<" "<<b.p<<" "<<b.num[0]; //initial space because disambiguation
	for(unsigned i=1; i<SIZE; ++i)
			os<<" "<<b.num[i];
	
	return os;
}

bool Ban::operator<(const Ban &b) const{
	//if(p < b.p)
	//	return ( b.num[0] > 0 || (!b.num[0] && num[0] < 0) );  // b.num[0] == 0
	// in one logic expression: p < b.p && ( b.num[0] > 0 || (!b.num[0] && num[0] < 0) )

	//if(p > b.p)
	//	return ( num[0] < 0 || (!num[0] && b.num[0] > 0) );  // num[0] == 0
	// in one logic expression: p > b.p && ( num[0] < 0 || (!num[0] && b.num[0] > 0) )

	// together
	bool pbp = p < b.p;
	bool bpp = b.p < p;
	bool deq_p = ( pbp && ( b.num[0] > 0 || (!b.num[0] && num[0] < 0) ) ) || ( !pbp && bpp && ( num[0] < 0 || (!num[0] && b.num[0] > 0) ) );


	// same leading power (i.e., magnitude)

	bool eq0 = num[0] == b.num[0];
	bool eq1 = num[1] == b.num[1];

	// does the same as the commented code below
	return ( deq_p || (!pbp && !bpp && ( (!eq0 && num[0] < b.num[0]) || (eq0 && ( (!eq1 && num[1] < b.num[1]) || (eq1 && num[2] < b.num[2]) ) ) ) ) );

	/*
	if(num[0] == b.num[0]){
		if(num[1] == b.num[1])
			return num[2] < b.num[2];

		return num[1] < b.num[1];
	}

	return num[0] < b.num[0];
	*/
}

bool Ban::operator<(T n) const{

	bool pg = p > 0;
	bool pl = p < 0;
	bool n0 = num[0] < 0;
	// ( pg &&  n0 ) || ( pl &&  ( n > 0 || ( !n && n0) ) )

	return ( ( pg &&  n0 ) || ( pl &&  ( n > 0 || ( !n && n0) ) ) || ( !p && ( num[0] < n || (num[0] == n && ( num[1] < 0 || ( !num[1] && num[2] < 0 ) ) ) ) ) ); 

	/*
	// here iff p == 0, so comparison among finite numbers
	if(num[0] < n)
		return true;
	if(num[0] > n)
		return false;

	// num[0] == n, infinitesimal components are crucial
	if(num[1]) // num[1] != 0
		return num[1] < 0;

	return num[2] < 0; // implicitly manages *this == n
	*/
}

Ban abs(const Ban &b){
	if(b.num[0] >= 0)
		return b;

	return -b;
}

Ban sqrt(const Ban &b){
	T normalizer;
	normalizer = b.num[0];
	T num_res[SIZE], eps_1[SIZE], eps_2[SIZE], eps_3[SIZE];
	
	eps_1[0] = eps_2[0] = 0;
	eps_1[1] = eps_2[1] = b.num[1]/normalizer;
	eps_1[2] = eps_2[2] = b.num[2]/normalizer;
	num_res[0] = 1;
	num_res[1] = 0.5*eps_1[1];
	num_res[2] = 0.5*eps_1[2];

	Ban::_mul(eps_1, eps_2, eps_3);

	num_res[0] += sqrt_exp*eps_3[0];
	num_res[1] += sqrt_exp*eps_3[1];
	num_res[2] += sqrt_exp*eps_3[2];

	normalizer = sqrt(normalizer);

	num_res[0] *= normalizer;
	num_res[1] *= normalizer;
	num_res[2] *= normalizer;

	return Ban(b.p>>1, num_res);
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

		res.num[p] += n;
		res.to_normal_form();

		return res;
	}

	T num_res[SIZE];
	num_res[0] = n;

	switch (p){
		case -1:
			num_res[2] = num[1];
			num_res[1] = num[0];
			break;
		
		case -2:
			num_res[2] = num[0];
			num_res[1] = 0;
			break;

		default:
			num_res[2] = 0;
			num_res[1] = 0;
			break;
	}

	return Ban(0, num_res);
}

Ban Ban::operator*(T n) const{
	Ban res(*this);

	res.num[0] *= n;
	res.num[1] *= n;
	res.num[2] *= n;
	
	res.to_normal_form();

	return res;
}

Ban Ban::operator/(T n) const{
	// no speed-up I guess
	//if(*this  == 0)  // *this == 0
	//	return ZERO;

	Ban res(*this);

	res.num[0] /= n;
	res.num[1] /= n;
	res.num[2] /= n;
	
	res.to_normal_form();

	return res;
}
