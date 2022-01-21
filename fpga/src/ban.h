#include <iostream>
#include <stdexcept>
#include <cmath>
using namespace std;
typedef float T;

const int SIZE = 3;
const int EVEN_SIZE = SIZE & 1u;
// coefficients of the sqrt(1-x) taylor expansion (required for sqrt)
const T sqrt_exp[5] = {-0.125, -0.0625, -7*0.03125, -21*0.015625};

class Ban{

	int p;
	T num[SIZE];

	// static functions
	static bool _check_inconsistency(int p, const T num[SIZE]);
	static Ban _sum(const Ban &a, const Ban &b, int diff_p);
	static void _mul(const T num_a[SIZE], const T num_b[SIZE], T num_res[SIZE]);

	// constructor without consistency check
	Ban(int p, const T num[SIZE], bool check);
	void init(int p, const T num[SIZE]);

	// utility functions
	void to_normal_form();

	public:
	
	// constructors
	Ban(int p, const T num[SIZE]);
	Ban(T n);

	// algebraic operations
	Ban operator+(const Ban &b) const;
	Ban operator-() const;
	Ban operator-(const Ban &b) const;
	Ban operator*(const Ban &b) const;
	Ban operator/(const Ban &b) const;
	Ban abs() const;
	Ban sqrt() const;


	friend ostream& operator<<(ostream& os, const Ban &b);

	// ordering operators
	bool operator==(const Ban& b) const;
	bool operator<(const Ban &b) const;
	inline bool operator>(const Ban &b)  const {return b<*this;};
	inline bool operator<=(const Ban &b) const {return !(b<*this);}; // *this <= b <-> !(*this>b) <-> !(b<*this)
	inline bool operator>=(const Ban &b) const {return !(*this<b);};

	// speedup functions for compuations with reals
	bool operator==(T n) const;
};

const T _[] = {1.0, 0, 0};
const Ban ALPHA(1, _);
const Ban ETA(-1, _);

// Copy constructor should be useless (default one is enough)
// Case of Inf needs to be managed?