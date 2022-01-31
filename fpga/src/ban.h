#include <iostream>
#include <stdexcept>
#include <cmath>
#include <fstream>
#include <iomanip>
using namespace std;
typedef float T;

constexpr int SIZE = 3;
constexpr int EVEN_SIZE = SIZE & 1u;
// coefficients of the sqrt(1-x) taylor expansion (required for sqrt)
constexpr T sqrt_exp[5] = {-0.125, -0.0625, -7*0.03125, -21*0.015625};

class Ban{

	int p;
	T num[SIZE];

	// static functions
	static bool _check_inconsistency(int p, const T num[SIZE]);
	static Ban _pow_fast(const Ban &b, unsigned e);
	static Ban _sum(const Ban &a, const Ban &b, int diff_p);
	Ban mul_body(const Ban &b) const;
	static void _mul(const T num_a[SIZE], const T num_b[SIZE], T num_res[SIZE]);
	static inline void _mul_trivial(const T num_a[SIZE], T n, T num_res[SIZE]) 
										{for(unsigned i=0; i<SIZE; ++i)
											num_res[i] = num_a[i]*n;};

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
	inline Ban operator-(const Ban &b) const {return *this+(-b);};
	Ban operator*(const Ban &b) const;
	Ban operator/(const Ban &b) const;
	Ban& operator+=(const Ban &b);
	inline Ban& operator-=(const Ban &b){return *this+=-b;};
	Ban& operator*=(const Ban &b);
	Ban& operator/=(const Ban &b);
	//Ban operator>>(unsigned i) const;
	//Ban operator<<(unsigned i) const;
	friend Ban abs(const Ban &b);
	friend Ban sqrt(const Ban &b);
	friend Ban pow(const Ban &b, int e);

	// operatori di uscita
	friend ostream& operator<<(ostream &os, const Ban &b);
	friend ofstream& operator<<(ofstream &os, const Ban &b);

	// ordering operators
	bool operator==(const Ban& b) const;
	bool operator<(const Ban &b) const;
	inline bool operator>(const Ban &b)  const {return b<*this;};
	inline bool operator<=(const Ban &b) const {return !(b<*this);}; // *this <= b <-> !(*this>b) <-> !(b<*this)
	inline bool operator>=(const Ban &b) const {return !(*this<b);};

	// speedup functions for compuations with reals
	Ban operator+(T n) const;
	inline Ban operator-(T n) const {return *this+(-n);};
	Ban operator*(T n) const;
	Ban operator/(T n) const; // make this inline? *this*(1/n)

	inline friend Ban operator+(T n, const Ban &b) {return b+n;};
	inline friend Ban operator-(T n, const Ban &b) {return -b+n;};
	inline friend Ban operator*(T n, const Ban &b) {return b*n;};
	friend Ban operator/(T n, const Ban &b);
	
	bool operator==(T n) const;
	bool operator<(T n) const;
	inline bool operator>(T n) const {return n<*this;};
	inline bool operator<=(T n) const {return !(n<*this);};
	inline bool operator>=(T n) const {return !(*this<n);};

	inline friend bool operator==(T n, const Ban &b) {return b == n;};
	friend bool operator<(T n, const Ban &b);
	inline friend bool operator>(T n, const Ban &b)  {return b<n;};
	inline friend bool operator<=(T n, const Ban &b) {return !(b<n);};
	inline friend bool operator>=(T n, const Ban &b) {return !(n<b);};

	// external functions (comment for tests)
	inline friend int degree(const Ban &b) {return b.p;};
};

constexpr T _[] = {1.0, 0, 0};
constexpr T __[] = {0.0, 0, 0};
const Ban ALPHA(1, _);
const Ban ETA(-1, _);
const Ban ZERO(0, __);
const Ban ONE(0, _);