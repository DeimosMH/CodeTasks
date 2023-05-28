[toc]

# C++ :: [C++ Primer Plus](.Books\C++_Primer_Plus,_Sixth_Edition,_2012,_Stephan_Prata.pdf)

## Chapter 1: Getting Started

Computer language deal with 2 concepts: DATA (information) & ALGORITHMS (methods)

C++ joins three programming categories:

- *C*   - Procedural language
- *C++* - Object-oriented language, represented by: class enhancements
- *C++* - Generic programming (eg. write function for a generic (unspecified) type once and use it for variety of actual types)

**Object-Oriented Programming (OOP):**

* *Class* - Defines what data is used to represent object and what operations can be performed on it; data form; [name, date, ...]
* *Object* - data structure; [David, 19.01.2000, ...]

Bottom-up programming - going from lower level (eg. classes) to higher (eg. program design) OOP facilitates creating reusable code with:

- *Information hiding* - safeguard from improper access
- *Polymorphism* - allows creating multiple definitions for operators and functions
- *Inheritance* - allows deriving new classes from old ones

**Mechanics of creating a Program:**

1. Write and save program: source code ``code.cpp``
2. Compile the source code: translation to machine language ``gcc ./code.cpp``
3. Link with additional code: libraries, functions; The output is executable code

**Common phrases:**

- *Compile* - Compile code in the file you are currently in
- *Build/Make* - Compile code for all source code files in the project
- *Build All* - Compile all source code files from scratch
- *Link* - Combine compiled source code with necessary library code
- *Run/Execute* - Run the program ./prog or exe
- *Debug* - Run program with option of going  through step-by-step

<button onclick="backToTop()" style="float: right;">Go to top</button>
<script>
    function backToTop() {
        window.scrollTo({ top: 0, behavior: 'smooth' });
}
</script>

## Chapter 2: Setting Out to C++

<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;">
        List of what you will learn
    </summary>

```
    1. Creation and format of C++ program </br>
    2. The #include directive </br>
    3. The main() function </br>
    4. Using cout object for output </br>
    5. Using cin object for input</br>
    6. How/when use endl</br>
    7. Placing comments in C++ program </br>
    8. Declaring and using variables and functions</br>
```

</details> <br>

***C++ is:***

- `case sensitive` - it distinguish uppercase from lowercase characters
- `spelling sensitive` - kout or coot instead of `cout` will give you error

***Construction of C++ program:***
C++ program is constructed from functions "C++ building blocks".
Typical program is organized to major tasks with separated functions to handle those tasks. Below is simple function named `main()`:

<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
    	<a href=".refs_notes/notes_C++_C++PrimerPlus\/myfirst.cpp"> myfirst.cpp </a>
    </summary>
    <figure>
        <iframe 
            src=".refs_notes/notes_C++_C++PrimerPlus\/myfirst.cpp" 
            frameborder="10" 
            allowfullscreen="true" 
            height="250px"
            width="100%">
        </iframe>
    </figure>
</details>

```cpp
// myfirst.cpp -- displays a message

#include <iostream>                          // a PREPROCESSOR directive
int main()                                   // function header
{                                            // start of function body
    using namespace std;                     // make definitions visible
    cout << "Come up and C++ me some time."; // message
    cout << endl;                            // start a new line
    cout << "You won’t regret it!" << endl;  // more output
    return 0;                                // terminate main()
} // end of function body
```

The fundamental structure of program (listing) above is:

```cpp
int main()
{
    statements
    return 0;
}
```

It have two parts: function header `int main()` and function body enclosed in brackets. `<br>`

C++ uses `preprocerssor` - Program, that process a source file before the main compilation takes place; directives whose names begins with `#`. Program above uses `#include` directive (thus they are named include files - they are included in other files/included at the beggining) of `iostream` file that is responsible with communication with external world (input/output).

- `using namespace std` - use all namespace directives from std library `std::`
- `using std::cout` - use only one `std::` qualifier
- `cout` - predefined object that knows how to display variety of things
- ***Operator Overloading*** - the same operator with different meanings, eg.: "`<<`" is insertion operator and bitwise left-shift operator. The meaning is defined by context.
- `endl` - Moves screen coursor to the new line; equvalent to newline character "`\n`" from C, but `endl` guarantees that output will be `flushed`. Special notations (to `cout`) like this are called `manipulators`
- ***tokens*** - indivisible elements in a line of code, eg.: `int`

---

***Statements***

To store information on a computer you need:

- identify storage location
- identify how much storage information requires
- ***C++ program*** - collection of functions.
- ***Function*** - collection of statements.
- `=` - assignment operator from right to left (assign value to a storage location).
- `<<` - insertion operator - defined in *ostream* class
- ``>>`` - extraction operator - defined in *istream* class

```cpp
/* 
- declaration statement 
- definition - variable is declared and it causes compiler to allocate memory space
 for variable. Declaration don't need to be the definition (something is declared
 but it don't need to have allocated space)
 */
int x;  

x = 10; // - assignement statement - provide/assign value to variable/storage location 
x = x - 1 // - arithmetic expression 
```

---

*class* - data type that user defines
*to define class* - describe what **information** it can represent and what **action** you can perform on data or in other words

```
x = sqrt(6.25)        -->    function call                 -->    |code for sqrt|   
                                                                        ▼
|assign return to x|  <--    return to calling function    <--    | sqrt return |
```

Argument `6.25` is ***passed*** to a function sqrt

***[function prototype](.refs_notes\notes_C++_C++PrimerPlus\function_prototype.cpp)*** - is for function as variable declaration for variables; decribe the function interface and needs to be before function definition; if you use it you will need to provide prototype in source code or with #include

***function definition*** - code for function workings

***keyword*** - vocabulary of a computer language: *int, void, return, double, etc..* - the list of them is in appendix "C++ Reserved Words"; functions and object names are not keywords

```cpp
//function prototype; initial double is type of returned value from sqrt; 
//double in sqrt(double) is passed argument for sqrt 
double sqrt(double);  
```

***exit values*** - (tested) return values of executed program. default convention: 0 - program ran successfully; >0 - error/problem

- Declaration statement — A declaration statement announces the name and the
  type of a variable used in a function.
- Assignment statement — An assignment statement uses the assignment operator ( = )
  to assign a value to a variable.
- Message statement — A message statement sends a message to an object, initiating
  some sort of action.
- Function call — A function call activates a function.When the called function ter-
  minates, the program returns to the statement in the calling function immediately
  following the function call.
- Function prototype — A function prototype declares the return type for a function,
  along with the number and type of arguments the function expects.
- Return statement — A return statement sends a value from a called function back
  to the calling function.

---

### Chapter Review

<!-- -------------------------------------------- -->

<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
1. What are the modules of C++ programs called?
    </summary>

```
They are called functions.
```

</details>

<!-- -------------------------------------------- -->

<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
2. What does the following preprocessor directive do?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;``#include <iostream>``

</summary>

```
It causes the contents of the iostream file to be substituted for this directive before
final compilation.
```

</details>

<!-- -------------------------------------------- -->

<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
3. What does the following statement do?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;``using namespace std;``
    `</summary>`

```
It makes definitions made in the std namespace available to a program.
```

</details>

<!-- -------------------------------------------- -->

<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
4. What statement would you use to print the phrase “Hello, world” and then start a
new line?
    </summary>

``cout << "Hello, world\n";``
or
``cout << "Hello, world" << endl;``

</details>

<!-- -------------------------------------------- -->

<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
5. What statement would you use to create an integer variable with the name
cheeses ?
    </summary>

```
int cheeses;
```

</details>

<!-- -------------------------------------------- -->

<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
6. What statement would you use to assign the value 32 to the variable cheeses ?
    </summary>

```
cheeses = 32;
```

</details>

<!-- -------------------------------------------- -->

<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
7. What statement would you use to read a value from keyboard input into the vari-
able cheeses ?
    </summary>

```
cin >> cheeses;
```

</details>

<!-- -------------------------------------------- -->

<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
8. What statement would you use to print “We have X varieties of cheese,” where the
current value of the cheeses variable replaces X ?
    </summary>

``cout << "We have " << cheeses << " varieties of cheese\n";``

</details>

<!-- -------------------------------------------- -->

<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
9. What do the following function prototypes tell you about the functions?

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;``int prune(void);``
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;``int froop(double t);``
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;``void rattle(int n);``
    `</summary>`

The function froop() expects to be called with one argument, which will be type double , and that the function will return a type int value. For instance, it could be used as follows: ``int gval = froop(3.14159);``

The function rattle() has no return value and expects an int argument. For instance, it could be used as follows: ``rattle(37);``

The function prune() returns an int and expects to be used without an argument. For instance, it could be used as follows: ``int residue = prune();``

</details>

<!-- -------------------------------------------- -->

<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
10.  When do you not have to use the keyword return when you define a function?
    </summary>

```
You don’t have to use return in a function when the function has the return type
void . However, you can use it if you don’t give a return value:
return;
```

</details>

<!-- -------------------------------------------- -->

<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
11. Suppose your main() function has the following line:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;``cout << “Please enter your PIN: “;``
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;And suppose the compiler complains that cout is an unknown identifier.
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;What is the likely cause of this complaint, and what are three ways to fix the problem?
    `</summary>`
***Lack of caller for std library.***
Use directive: ``using namespace std;`` or ``using std::cout`` for only `cout` or call library with `std::cout` instead of `cout`

</details>

---

### Exercises

[1.](.refs_notes\notes_C++_C++PrimerPlus\exercise_ch2_1.cpp) Write a C++ program that displays your name and address (or if you value yourprivacy,a fictitious name and address).

[2.](.refs_notes\notes_C++_C++PrimerPlus\exercise_ch2_2.cpp) Write a C++ program that asks for a distance in furlongs and converts it to yards.(One furlong is 220 yards.)

[3.](.refs_notes\notes_C++_C++PrimerPlus\exercise_ch2_3.cpp) Write a C++ program that uses three user-defined functions (counting `main()` as one) and produces the following output:

```
Three blind mice
Three blind mice
See how they run
See how they run
```

One function,called two times,should produce the first two lines, and the remain-ing function, also called twice, should produce the remaining output.

[4.](.refs_notes\notes_C++_C++PrimerPlus\exercise_ch2_4.cpp) Write a program that asks the user to enter his or her age. The program then should display the age in months:

```
Enter your age: 29
Your age in months is 384.
```

[5.](.refs_notes\notes_C++_C++PrimerPlus\exercise_ch2_5.cpp) Write a program that has `main()` call a user-defined function that takes a Celsius temperature value as an argument and then returns the equivalent Fahrenheit value.The program should request the Celsius value as input from the user and displaythe result,as shown in the following code:

```
Please enter a Celsius value: 20
20 degrees Celsius is 68 degrees Fahrenheit.
```

For reference,here is the formula for making the conversion: `Fahrenheit = 1.8 × degrees Celsius + 32.0`

[6.](.refs_notes\notes_C++_C++PrimerPlus\exercise_ch2_6.cpp)  Write a program that has `main()` call a user-defined function that takes a distance in light years as an argument and then returns the distance in astronomical units.The program should request the light year value as input from the user and display the result,as shown in the following code:

```
Enter the number of light years: 4.2
4.2 light years = 265608 astronomical units.
```

An astronomical unit is the average distance from the earth to the sun (about 150,000,000 km or 93,000,000 miles), and a light year is the distance light travels in a year (about 10 trillion kilometers or 6 trillion miles).
(The nearest star after thesun is about 4.2 light years away.) Use type double (as in Listing 2.4 (page 51)) and this conversion factor:

```
1 light year = 63,240 astronomical units
```

[7.](.refs_notes\notes_C++_C++PrimerPlus\exercise_ch2_7.cpp) Write a program that asks the user to enter an hour value and a minute value. The `main()` function should then pass these two values to a type `void` function that displays the two values in the format shown in the following sample run:

```
Enter the number of hours: 9
Enter the number of minutes: 28
Time: 9:28
```

<button onclick="backToTop()" style="float: right;">Go to top</button>
<script>
    function backToTop() {
        window.scrollTo({ top: 0, behavior: 'smooth' });
}
</script>

## Chapter 3: Dealing with Data

<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;">
        List of what you will learn
    </summary>

```
- Rules for naming C++ variables
- C++’s built-in integer types: unsigned long, long, unsigned int, int, unsigned
short, short, char, unsigned char, signed char, bool
- C++11’s additions: unsigned long long and long long
- The climits file, which represents system limits for various integer types
- Numeric literals (constants) of various integer types
- Using the const qualifier to create symbolic constants
- C++’s built-in floating-point types: float, double, and long double
- The cfloat file, which represents system limits for various floating-point types
- Numeric literals of various floating-point types
- C++’s arithmetic operators
- Automatic type conversions
- Forced type conversions (type casts)
```

</details> <br>


**Build-in C++ data types**:
 - fundamental types - integers and floating point numbers 
 - compound types - arrays, strings, pointers and structures, explained in Chapter 4


**To store item of information on a computer you need to track**:
- Where the information is stored
- What value is kept there
- What kind of information is stored

**C++ naming rules**:
- Only characters you can use in names are: alphabetic characters, numeric digits and underscore character
- The first character in a name cannot be a nu,eric digit
- Uppercase characters are considered distinct from lowercase characters
- You can't use C++ keyword for a name
- Names beginning with two underscore characters or with an underscore character followed by an uppercase letter are reseved for use by implementation (the compiler and the resources it uses).
- Names beggining with single underscore character are reserved for use as global identifiers bt the implementation
- C++ places no limits on the length of a name, and all characters in a name are significant (but some platforms can have their own length limits).

Data 
- *width* - term for the amount of memory used to hold variable
- *operator* - build in language element that operates on one or more items to produce a value (addition operator `+` adds two values)
    - *sizeof* - return size in bytes of a tupe or variable
    - *climits* - header file - contain information about integer type limits, check [limits.cpp](.refs_notes\notes_C++_C++PrimerPlus\limits.cpp) 


<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
    	<a href=".refs_notes\notes_C++_C++PrimerPlus\limits.cpp"> limits.cpp </a>
    </summary>
    <figure>
        <iframe 
            src=".refs_notes\notes_C++_C++PrimerPlus\limits.cpp" 
            frameborder="10" 
            allowfullscreen="true" 
            height="250px"
            width="100%">
        </iframe>
    </figure>
</details>


### Initialization
Combines assignment with declaration, for example:
```cpp
int i_sth = INT_MAX; 
int owls = 101; // traditional C initialization, sets owls to 101
int wrens(432); // alternative C++ syntax, set wrens to 432
``` 

Not initialized variables are **indeterminate** - value is what was previously in memory, assigned to the newly declared variable;

**C++11 initialization:**
- using a braced initializer `{}`
- braces can be left empty, in which case the variable is initialized to 0
- it can be used with or without the = sign
- it provides better protection against type conversion errors (more on end of this chapter)
  
```cpp
int emus{7};        // set emus to 5
int rheas = {12};   // set rheas to 12
int rocs = {};      // set rocs to 0
int psychics{};     // set psychics to
```

-----

Exceeding max value (range of data type) will make value assign the lowest value possible (like odometer).  

Amount of allocated memory for `int` (and thus max range/value) can differ from devices and compilers, but is *natural* (computer handles it most efficiently); `long` type is more reliable (32bit), but worse in other aspects.


### Literals 
Constant values that are assigned to the constant variables.

#### Integer literals 

- *042* - octal value - base 8 
- *42* - decimal value, base 10  
- *0x42* - hexadecimal value - base 16

Example in hexoctl.cpp
<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
    	<a href=".refs_notes\notes_C++_C++PrimerPlus\hexoct1.cpp"> hexoct1.cpp </a>
    </summary>
    <figure>
        <iframe 
            src=".refs_notes\notes_C++_C++PrimerPlus\hexoct1.cpp" 
            frameborder="10" 
            allowfullscreen="true" 
            height="250px"
            width="100%">
        </iframe>
    </figure>
</details> <br>

You can `cout` manipulators `dec`, `oct`, `hex` for changing numer base.
Example in hexoct2.cpp

<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
    	<a href=".refs_notes\notes_C++_C++PrimerPlus\hexoct2.cpp"> hexoct2.cpp </a>
    </summary>
    <figure>
        <iframe 
            src=".refs_notes\notes_C++_C++PrimerPlus\hexoct2.cpp" 
            frameborder="10" 
            allowfullscreen="true" 
            height="250px"
            width="100%">
        </iframe>
    </figure>
</details> <br>

#### Character literals
**Suffix** for constant:

`l`, `L` - 32bit long constant
`u`, `U` - unsigned int constant
`ul` (any combination of letters) - unsigned long constant 
`ll`, `LL` - C++11 long long constant 
`ULL` - C++11 unsigned long long constant 

| data  | Stored as  |
|---|---|
| `1500`  | 16bit int  |
|`1500L`| 32bit long |

Characters set, like **ASCII** defines which number defines character. Thus `char` is `int` data type value and operations on it like on ints can be performed. Printed characters are processed through `cout`.

Using single quotation marks, eg. `'A'` for character display is better, because it doesn't assume particular code.

Escape codes represent characters, that you cannot input from keyboard notrmally:

<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
    	Table of escape codes
    </summary>

|Character Name| ASCII Symbol | C++ Code | ASCII Decimal Code | ASCII Hex Code |
|---|---|---|---|---|---|
| Newline | NL (LF) | \n | 10 | 0xA |
| Horizontal tab | HT |\t | 9 | 0x9 |
| Vertical tab | VT | \v | 11 | 0xB |
| Backspace | BS | \b | 8 | 0x8 |
| Carriage return | CR | \r | 13 | 0xD |
| Alert | BEL | \a | 7 | 0x7 |
| Backslash | \ | \\ | 92 | 0x5C |
| Question mark | ? | \\?  | 63 | 0x3F |
| Single quote | ’ | \\' | 39 | 0x27 |
| Double quote | ” | \\" | 34 | 0x22 |
</details> 



<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
    	<a href=".refs_notes\notes_C++_C++PrimerPlus\bondini.cpp"> Example of use: bondini.cpp </a>
    </summary>
    <figure>
        <iframe 
            src=".refs_notes\notes_C++_C++PrimerPlus\bondini.cpp" 
            frameborder="10" 
            allowfullscreen="true" 
            height="250px"
            width="100%">
        </iframe>
    </figure>
</details> <br>

**Universal Character Names** - used for international characters like French vowel. It starts with `\u` ot `\U`, eg.: ``` cout << "g\u00E2teau. ``` - **ISO 10646**

`wchar_t` - wide character set - for characters that don't fit within 8-bit bute (eg.: Japanese kanji system). It is 16-bit or larger. `wchar_t` can vary from one implementation to another.

#### C++11 types
 - `char16_t` - unsigned 16-bits, use `u` prefix for `char16_t`, eg.: `u"good"` or `u'R'`
 - `char32_t` - unsigned 32-bits, use `U` prefix for `char32_t` 

### Member function (OOP)
Eg. `cout.put()`, belongs to a class and describes a method for manipulating class data. `put()` is a class member function. `.` is **membersip operator**.
You can use member function only with particular object in that class (in this case `ostream`), such as `cout` class object in this case.

In short: class - `ostream`, class object - `cout`, function name (member function) - `put()`

`cout.put()` is alternative for using `<<` operator to display character.

### *bool* type
C++ interprets nonzero values as *true* and zeros values as *false*
You can use `bool` type to reprsent those values:

```cpp
bool read = true; 
```

The literals true and false can be converted to type int by promotion, with *true* converting to 1 and *false* to 0 and vice-versa:

```cpp
int ans = true;         // ans assigned 1
int promise = false;    // promise assigned 0
bool is_tru = -500;     // any non-zero will be converted to true 
```

### *const* qualifier

- if attempted to change, compilator will give error
- if value is not provided during declaration, it will be unspecified, that you cannot modify  
- you can use *scoping rules* (chapter 9) to limit it to particular function or files (advantage over *#define*, second advantage is you can use const with elaborate types, such as *arrays* or *structures*)

Example of use: 
`const int Months = 12;`

### Floating-Point Numbers

There is two ways of writing floating-point numbers:
- standard, decimal-point notation, eg.: `12.34`
- representing floating-point values is called E notation, eg.: `-3.45E6` *= -3.4 * 10^6* (where `6` - exponent, `3.45` - mantissa).


**Floating-Point Types:**
All three can be the same size. Typically, float is 32 bits, double is 64 bits, and long double is 80, 96, or 128 bits, and range in exponents for all three types is at least *–37 to +37*. You can look in the `cfloat` or `float.h` header files to find the limits for your system.

The program *floatnum.cpp* display limiitations of floating-point numbers precision and previews an *ostream* method called `setf()` from Chapter 17. This call forces output to stay in ***fixed-point notation*** so that you can better see the precision.

<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
    	<a href=".refs_notes\notes_C++_C++PrimerPlus\floatnum.cpp"> floatnum.cpp </a>
    </summary>
    <figure>
        <iframe 
            src=".refs_notes\notes_C++_C++PrimerPlus\floatnum.cpp" 
            frameborder="10" 
            allowfullscreen="true" 
            height="250px"
            width="100%">
        </iframe>
    </figure>
</details> <br>

**Floating-Point Constants**
Use suffixes for declaration
`f` or `F` - float constant, eg.: `1.234f`
`l` or `L` - long double

```
1.234f // a float constant
2.45E20F // a float constant
2.345324E28 // a double constant
2.2L // a long double constant
```

**Plus and Cons of Floating-Point values**
`-` operations usually are *slightly slower* than integer operations
`-` you can *lose precision* and values: example [fltadd.cpp](.refs_notes\notes_C++_C++PrimerPlus\fltadd.cpp)
`+` represent *values betwewen integers*
`+` can represent a much *greater range of values*, because of the scaling factor

**C++ Arithmetic Operators**
- *operators*: `+`, `-`, `*`, `%`, `/`, `*`
- *operands* - two values used for calculation via *operators* 
- *expression* - combined operator with operands
  
`%` - modulo works only with integers and produces remainder of dividing first value by second. `19 % 6` is `1`, because 6 goes into 19 three times, with a remainder of 1. Practical example: [modulus.cpp](.refs_notes\notes_C++_C++PrimerPlus\modulus.cpp)

`precedence rules` - When more than one operator can be applied to the same operand, C++ uses` precedence rules` to decide which operator is used first.

`int flyingpigs = 3 + 4 * 5; // 35 or 23?`
The arithmetic operators follow the usual algebraic precedence, with multiplication, division, and the taking of the modulus done before addition and subtraction. 

Appendix D,“Operator Precedence,” - The `/` and `*` operators have the same precedence. 
`float logs = 120 / 4 * 5; // 150 or 6?`

When two operators have the same precedence, C++ looks at whether the operators have a `left-to-right associativity` or a `right-to-left associativity`.
Appendix D shows that multiplication and division associate left-to-right.

**Conversion**

- truncation - discarding fractional part in `int`, when converting from floating-point to int value (eg.: `int g(1.123)`)

C++11 - doesn't permit *narrowing* - variable may not be able to represent the assigned value:
```cpp
const int code = 66;
int x = 66;
char c1 {31325}; // narrowing, not allowed
char c2 = {66}; // allowed because char can hold 66
char c3 {code}; // ditto
char c4 = {x}; // not allowed, x is not constant
x = 31325;
char c5 = x; // allowed by this form of initialization
```

 - integral promotion - automatic conversion evaluates expressions, C++
converts `bool`, `char`, `unsigned char`, `signed char`, and `short` values to `int`, eg.: 
```cpp
short chickens = 20; // line 1
short ducks = 35; // line 2
short fowl = chickens + ducks; // line 3
```
For `fowl`, `chickens` and `ducks` got converted (promoted) to `int` for calculation and then result got converted back to `short`. This is because `int` is the computer most *natural type* 

**Type cast conversion**
Is explicit form of conversion
```cpp
(long) thorn // returns a type long conversion of thorn
long (thorn) // returns a type long conversion of thorn
```

The type cast doesn’t alter the thorn variable itself; instead, it creates a new value of the indicated type, which you can then use in an expression, as in the following: 
```cpp
cout << int('Q'); // displays the integer code for 'Q'
```

**Static type cast conversion**

In c++ of the four, the static_cast<> operator, can be used for converting values from one numeric type to another. For example, using it to convert thorn to a type long value looks like this:
```cpp
static_cast<long> (thorn)
```

<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
    	<a href=".refs_notes\notes_C++_C++PrimerPlus\typecast.cpp"> typecast.cpp </a>
    </summary>
    <figure>
        <iframe 
            src=".refs_notes\notes_C++_C++PrimerPlus\typecast.cpp" 
            frameborder="10" 
            allowfullscreen="true" 
            height="250px"
            width="100%">
        </iframe>
    </figure>
</details> <br>

**`auto` in C++11**

Just use `auto` instead of the type name in an initializing declaration, and the compiler assigns the variable the same type as that of the initializer:
```cpp
auto n = 100; // n is int
auto x = 1.5; // x is double
auto y = 1.3e12L; // y is long double
```

Automatic type deduction becomes much more useful when dealing with complicated types, such as those in the **STL (Standard Template Library)**. For example: 

C++98 code:
```cpp
std::vector<double> scores;
std::vector<double>::iterator pv = scores.begin();
```
C++11 code:
```cpp
std::vector<double> scores;
auto pv = scores.begin();
```

### Chapter Review

<!-- -------------------------------------------- -->

<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
1. Why does C++ have more than one integer type?
    </summary>


Having more than one integer type lets you choose the type that is best suited to a particular need. For example, you could use `short` to conserve space or `long` to guarantee storage capacity or to find that a particular type speeds up a particular calculation.

</details>


<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
2. Declare variables matching the following descriptions:<br>
&nbsp&nbsp&nbsp&nbsp&nbsp a. A short integer with the value 80<br>
&nbsp&nbsp&nbsp&nbsp&nbsp b. An unsigned int integer with the value 42,110<br>
&nbsp&nbsp&nbsp&nbsp&nbsp c. An integer with the value 3,000,000,000
    </summary>

```cpp
short rbis = 80; // or short int rbis = 80;
unsigned int q = 42110; // or unsigned q = 42110;
unsigned long ants = 3000000000;
// or long long ants = 3000000000;

//Note: Don’t count on int being large enough to hold 3,000,000,000.Also if your
//system supports universal list-initialization, you could use it:
short rbis = {80}; // = is optional
unsigned int q {42110}; // could use = {42110}
long long ants {3000000000};
```
</details>

<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
3. What safeguards does C++ provide to keep you from exceeding the limits of an
integer type?
    </summary>

C++ provides no automatic safeguards to keep you from exceeding integer limits;
you can use the climits header file to determine what the limits are.
</details>

<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
4. What is the distinction between 33L and 33?
    </summary>

The constant 33L is type long, whereas the constant 33 is type int.
</details>

<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
5. Consider the two C++ statements that follow:

```cpp
char grade = 65;
char grade = 'A';
```
Are they equivalent?
    </summary>

The two statements are not really equivalent, although they have the same effect on some systems. Most importantly, the first statement assigns the letter `A` to grade only on a system using the `ASCII` code, while the second statement also works for other codes. Second, `65` is a type int constant, whereas `'A'` is a type char constant.
</details>


<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
6. How could you use C++ to find out which character the code 88 represents?
Come up with at least two ways.
    </summary>

Here are four ways:
```cpp
char c = 88;
cout << c << endl; // char type prints as character
cout.put(char(88)); // put() prints char as character
cout << char(88) << endl; // new-style type cast value to char
cout << (char)88 << endl; // old-style type cast value to char
```
</details>


<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
7. Assigning a `long` value to a `float` can result in a rounding error. What about assigning `long` to `double`? `long long` to `double`?
    </summary>

The answer depends on how large the two types are. If `long` is 4 bytes, there is no loss. That’s because the largest `long` value would be about 2 billion, which is 10 digits. Because `double` provides at least 13 significant figures, no rounding would be needed. The `long long` type, on the other hand, can reach 19 digits, which exceeds the 13 significant figures guaranteed for `double`.
</details>


<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
8. Evaluate the following expressions as C++ would:

```cpp
a. 8 * 9 + 2 
b. 6 * 3 / 4 
c. 3 / 4 * 6 
d. 6.0 * 3 / 4 
e. 15 % 4 
```

</summary>

```cpp
a. 8 * 9 + 2 is 72 + 2 is 74
b. 6 * 3 / 4 is 18 / 4 is 4
c. 3 / 4 * 6 is 0 * 6 is 0
d. 6.0 * 3 / 4 is 18.0 / 4 is 4.5
e. 15 % 4 is 3
```
</details>


<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
9.  Suppose `x1` and `x2` are two type `double` variables that you want to add as `integers` and assign to an `integer` variable. Construct a C++ statement for doing so. What if you want to add them as type `double` and then convert to `int`?

</summary>

Either of the following would work for the first task:
```cpp
int pos = (int) x1 + (int) x2;
int pos = int(x1) + int(x2);
```
To add them as type double and then convert, you could do either of the following:
```cpp
int pos = (int) (x1 + x2);
int pos = int(x1 + x2);
```
</details>

<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
10.  What is the variable type for each of the following declarations?

```cpp
a. `auto cars = 15;` 
b. `auto iou = 150.37f;`
c. `auto level = 'B';` 
d. `auto crat = U'/U00002155';` 
e. `auto fract = 8.25f/2.5;` 
```

</summary>

```cpp
a. int
b. float
c. char
d. char32_t
e. double
```
</details>

### Programming Exercises
[1.](.refs_notes\notes_C++_C++PrimerPlus\exercise_ch3_1.cpp) Write a short program that asks for your height in integer inches and then converts your height to feet and inches. Have the program use the underscore character to indicate where to type the response. Also use a const symbolic constant to represent the conversion factor.

[2.](.refs_notes\notes_C++_C++PrimerPlus\exercise_ch3_2.cpp)  Write a short program that asks for your height in feet and inches and your weight in pounds. (Use three variables to store the information.) Have the program report your body mass index (BMI).To calculate the BMI, first convert your height in feet and inches to your height in inches (1 foot = 12 inches). Then convert your height in inches to your height in meters by multiplying by 0.0254.Then convert your weight in pounds into your mass in kilograms by dividing by 2.2. Finally, compute your BMI by dividing your mass in kilograms by the square of your height in meters. Use symbolic constants to represent the various conversion factors.

[3.](.refs_notes\notes_C++_C++PrimerPlus\exercise_ch3_3.cpp) Write a program that asks the user to enter a latitude in degrees, minutes, and seconds and that then displays the latitude in decimal format.There are 60 seconds of arc to a minute and 60 minutes of arc to a degree; represent these values with symbolic constants.You should use a separate variable for each input value. A sample run should look like this:

```cpp
Enter a latitude in degrees, minutes, and seconds:
First, enter the degrees: 37
Next, enter the minutes of arc: 51
Finally, enter the seconds of arc: 19
37 degrees, 51 minutes, 19 seconds = 37.8553 degrees
```

[4.](.refs_notes\notes_C++_C++PrimerPlus\exercise_ch3_4.cpp) Write a program that asks the user to enter the number of seconds as an integer value (use type long, or, if available, long long) and that then displays the equivalent time in days, hours, minutes, and seconds. Use symbolic constants to represent the number of hours in the day, the number of minutes in an hour, and the number of seconds in a minute.The output should look like this:
```cpp
Enter the number of seconds: 31600000 
31600000 seconds = 365 days, 17 hours, 46 minutes, 40 seconds
```

[5.](.refs_notes\notes_C++_C++PrimerPlus\exercise_ch3_5.cpp) Write a program that requests the user to enter the current world population and the current population of the U.S. (or of some other nation of your choice). Store the information in variables of type long long. Have the program display the percent that the U.S. (or other nation’s) population is of the world’s population.The output should look something like this:
```cpp
Enter the world's population: 6898758899
Enter the population of the US: 310783781
The population of the US is 4.50492% of the world population.
```
You can use the Internet to get more recent figures.

[6.](.refs_notes\notes_C++_C++PrimerPlus\exercise_ch3_6.cpp) Write a program that asks how many miles you have driven and how many gallons of gasoline you have used and then reports the miles per gallon your car has gotten. Or, if you prefer, the program can request distance in kilometers and petrol in liters and then report the result European style, in liters per 100 kilometers.

[7.](.refs_notes\notes_C++_C++PrimerPlus\exercise_ch3_7.cpp) Write a program that asks you to enter an automobile gasoline consumption figure in the European style (liters per 100 kilometers) and converts to the U.S. style of miles per gallon. Note that in addition to using different units of measurement, the U.S. approach (distance / fuel) is the inverse of the European approach (fuel / distance).
Note that 100 kilometers is 62.14 miles, and 1 gallon is 3.875 liters.Thus, 19 mpg is about 12.4 l/100 km, and 27 mpg is about 8.7 l/100 km.


## Chapter 4: Compound Types

<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;">
        List of what you will learn
    </summary>

```
Creating and using arrays
Creating and using C-style strings
Creating and using string-class strings
Using the getline() and get() methods for reading strings
Mixing string and numeric input
Creating and using structures
Creating and using unions
Creating and using enumerations
Creating and using pointers
Managing dynamic memory with new and delete
Creating dynamic arrays
Creating dynamic structures
Automatic, static, and dynamic storage
The vector and array classes (an introduction)
```
</details>

## Arrays
Data form that can hold many values of one type. Declaration should indicate three things:

- The type of value to be stored in each element
- The name of the array
- The number of elements in the array

`typeName arrayName[arraySize];` - *arraySize* cannot be a variable whose value is set while the program is running. However, later in this chapter you’ll learn how to use `the` new operator to get around that restriction

```cpp
short months[12]; // creates array of 12 short
```

An array is called a `compound` type because it is built from some other type. (C uses the term `derived` type, but because C++ uses the term `derived` for class relationships, it had to come up with a new term.)

You can access array elements individually.The way to do this is to use a `subscript`, or an `index`, to number the elements. C++ array numbering starts with zero. **The `index` of the last element is one less than the size of the `array`**

<img src=".refs_notes/notes_C++_C++PrimerPlus/_ch4Array.png" alt="Image description" style="display: block; margin: auto; width: 50%; height: auto; border-radius: 8px;">

*Declaring* an `array`, *assigning values* to `array` elements, and *initializing* an `array`:

<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
    	<a href=".refs_notes/notes_C++_C++PrimerPlus\arrayone.cpp"> arrayone.cpp </a>
    </summary>
    <figure>
        <iframe 
            src=".refs_notes/notes_C++_C++PrimerPlus\arrayone.cpp" 
            frameborder="10" 
            allowfullscreen="true" 
            height="250px"
            width="100%">
        </iframe>
    </figure>
</details>

### Array Initialization 

You can use the initialization form only when defining the array.You cannot use it later, and you cannot assign one array wholesale to another:

```cpp
int cards[4] = {3, 6, 8, 10};   // okay
int hand[4];                    // okay
hand[4] = {5, 6, 7, 9};         // not allowed
hand = cards;                   // not allowed

// If you partially initialize an array, 
// the compiler sets the remaining elements to zero.
float hotelTips[5] = {5.0, 2.5};

// If you leave the square brackets ([]) empty 
// when you initialize an array, the C++ compiler
// counts the elements for you.
short things[] = {1, 5, 3, 8};
```


Often, letting the compiler count the number of elements is poor practice because its count can be different from what you think it should be. You could, for instance, accidently omit an initial value from the list. However, this approach can be a safe one for initializing a character array to a string, as you’ll soon see. And if your main concern is that the program, not you, knows how large an array is, you can do something like this:
```cpp
short things[] = {1, 5, 3, 8};
int num_elements = sizeof things / sizeof (short);
```

#### C++11 Array Initialization

```cpp
// 1. You can drop the = sign when initializing an array:
double earnings[4] {1.2e4, 1.6e4, 1.1e4, 1.7e4}; // okay with C++11

// 2. You can use empty braces to set all the elements to 0:
unsigned int counts[10] = {}; // all elements set to 0
float balances[100] {}; // all elements set to 0

// 3. List-initialization protects against narrowing (As in Chapter 3):
long plifs[] = {25, 92, 3.0}; // not allowed
char slifs[4] {'h', 'i', 1122011, '\0'}; // not allowed
char tlifs[4] {'h', 'i', 112, '\0'}; // allowed
```

`vector` - STL alternative for arrays 
`array` template class - C++11 alternative for arrays
