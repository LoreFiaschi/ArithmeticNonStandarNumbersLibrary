#include <iostream>
#include <stdexcept>
#include <cmath>
#include <fstream>
#include <iomanip>
using namespace std;
typedef float T;     // generates inaccuracies in division proportional to 1e-6
//typedef double T;  // no generation of inaccuracies in division

#define SIZE 3
// coefficients of the sqrt(1-x) taylor expansion (required for sqrt)
constexpr T sqrt_exp = -0.125;

union output;

enum op_type{
	SUM, OPP, DIF, MUL, DIV, ABS, SQRT,
	EQ,  NEQ, LES, LAR, LES_EQ, LAR_EQ,

	SUM_R, DIF_R, MUL_R, DIV_R,
	EQ_R, NEQ_R, LES_R, LAR_R, LES_EQ_R, LAR_EQ_R,
};


class Ban{

	int p;
	T num[SIZE];

	// utility functions
	void to_normal_form();
	Ban mul_body(const Ban &b) const;

	// static functions
	static Ban _pow_fast(const Ban &b, unsigned e);
	static Ban _sum(const Ban &a, const Ban &b, int diff_p);
	static void _div_body(const T num_num[SIZE], const T num_den[SIZE], T num_res[SIZE]);
	static void _mul(const T num_a[SIZE], const T num_b[SIZE], T num_res[SIZE]);

	// constructor without consistency check
	void init(int p, const T num[SIZE]);

	// utility for boolean conversion
	//typedef void (Ban::*bool_type)() const;
    //void this_type_does_not_support_comparisons() const {}
	//explicit operator int() const = delete;

	public:
	
	// constructors
	Ban(){};
	Ban(int p, const T num[SIZE]);
	Ban(T n);

	// interface for Vitis
	friend output ban_interface(Ban b_op1, const Ban b_op2, T f_op, op_type op);

	// boolean convertion
	//explicit inline operator bool() const{return num[0];};
	//inline operator bool_type() const {
    //  return num[0] ? &Ban::this_type_does_not_support_comparisons : 0;
    //};

	// algebraic operations
	Ban operator+(const Ban &b) const;
	Ban operator-() const;
	inline Ban operator-(const Ban &b) const {return *this+(-b);};
	Ban operator*(const Ban &b) const;
	Ban operator/(const Ban &b) const;
	friend Ban abs(const Ban &b);
	friend Ban sqrt(const Ban &b);

	// operatori di uscita
	friend ostream& operator<<(ostream &os, const Ban &b);
	friend ofstream& operator<<(ofstream &os, const Ban &b);

	// ordering operators
	bool operator==(const Ban& b) const;
	inline bool operator!=(const Ban& b) const {return !(*this == b);};
	bool operator<(const Ban &b) const;
	inline bool operator>(const Ban &b)  const {return b<*this;};
	inline bool operator<=(const Ban &b) const {return !(b<*this);}; // *this <= b <-> !(*this>b) <-> !(b<*this)
	inline bool operator>=(const Ban &b) const {return !(*this<b);};

	// speedup functions for compuations with reals
	Ban operator+(T n) const;
	inline Ban operator-(T n) const {return *this+(-n);};
	Ban operator*(T n) const;
	Ban operator/(T n) const; // make inline? *this*(1/n)
	
	bool operator==(T n) const;
	inline bool operator!=(T n) const{return !(*this == n);};
	bool operator<(T n) const;
	inline bool operator>(T n) const {return !(*this==n || *this<n);};
	inline bool operator<=(T n) const {return (*this==n || *this<n);};
	inline bool operator>=(T n) const {return !(*this<n);};
};

union output{

	bool l;
	Ban b;

	output(){};
};

constexpr T _[] = {1.0, 0, 0};
constexpr T __[] = {0.0, 0, 0};
const Ban ALPHA(1, _);
const Ban ETA(-1, _);
const Ban ZERO(0, __);
const Ban ONE(0, _);
