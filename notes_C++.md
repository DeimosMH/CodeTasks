[TOC]

# C++ <C++ Primer Plus>

## Chapter 1: Getting Started

Computer language deal with 2 concepts: DATA (information) & ALGORITHMS (methods)

C++ joins three programming categories: 
 - *C*   - Procedural language 
 - *C++* - Object-oriented language, represented by: class enhancements
 - *C++* - Generic programming (eg. write function for a generic (unspecified) type once and use it for variety of actual types)

**Object-Oriented Programming (OOP):** 

* *Class* - Defines what data is used to represent object and what operations can be performed on it; data form; [name, date, ...] 
* *Object* - data structure; [David, 19.01.2000, ...]

Bottom-up programming - going from lower level (eg. classes) to higher (eg. program design) \
OOP facilitates creating reusable code with: 

- *Information hiding* - safeguard from improper access 
- *Polymorphism* - allows creating multiple definitions for operators and functions 
- *Inheritance* - allows deriving new classes from old ones

**Mechanics of creating a Program:**

1. Write and save program: source code ```code.cpp```
2. Compile the source code: translation to machine language ``gcc ./code.cpp``
3. Link with additional code: libraries, functions; The output is executable code 

**Common phrases:**

- *Compile* - Compile code in the file you are currently in 
- *Build/Make* - Compile code for all source code files in the project 
- *Build All* - Compile all source code files from scratch 
- *Link* - Combine compiled source code with necessary library code 
- *Run/Execute* - Run the program ./prog or exe
- *Debug* - Run program with option of going  through step-by-step

## Chapter 2: Setting Out to C++

<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;">
        List of what you will learn
    </summary>
    1. Creation and format of C++ program </br>
    2. The #include directive </br>
    3. The main() function </br>
    4. Using cout object for output </br>
    5. Using cin object for input</br>
    6. How/when use endl</br>
    7. Placing comments in C++ program </br>
    8. Declaring and using variables and functions</br>
</details>

***C++ is:***
- `case sensitive` - it distinguish uppercase from lowercase characters
- `spelling sensitive` - kout or coot instead of `cout` will give you error 

***Construction of C++ program:***<br>
C++ program is constructed from functions "C++ building blocks"<br>
Typical program is organized to major tasks with separated functions to handle those tasks. Below is simple function named `main()`: 

<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
    	<a href=".refs_notes/notes_C++/01_myfirst.cpp"> myfirst.cpp </a>
    </summary>
    <figure>
        <iframe 
            src=".refs_notes/notes_C++/01_myfirst.cpp" 
            frameborder="10" 
            allowfullscreen="true" 
            height="250px">
        </iframe>
    </figure>
</details>

<!-- ``` cpp
// myfirst.cpp -- displays a message
#include <iostream>                             // a PREPROCESSOR directive
int main()                                      // function header
{                                               // start of function body
    using namespace std;                        // make definitions visible
    cout << "Come up and C++ me some time.";    // message
    cout << endl;                               // start a new line
    cout << "You won’t regret it!" << endl;     // more output
return 0;                                       // terminate main()
}                                               // end of function body
``` -->

The fundamental structure of program (listing) above is:
```cpp
int main()
{
    statements
    return 0;
}
```

It have two parts: function header `int main()` and function body enclosed in brackets. <br> 

C++ uses `preprocerssor` - Program, that process a source file before the main compilation takes place; directives whose names begins with `#`. Program above uses `#include` directive (thus they are named include files - they are included in other files/included at the beggining) of `iostream` file that is responsible with communication with external world (input/output).    

- `using namespace std` - use all namespace directives from std library `std::` 
- `using std::cout` - use only one `std::` qualifier 
- `cout` - predefined object that knows how to display variety of things
- ***Operator Overloading*** - the same operator with different meanings, eg.: "`<<`" is insertion operator and bitwise left-shift operator. The meaning is defined by context.
- `endl` - Moves screen coursor to the new line; equvalent to newline character "`\n`" from C, but `endl` guarantees that output will be `flushed`. Special notations (to `cout`) like this are called `manipulators`
- ***tokens*** - indivisible elements in a line of code, eg.: `int`

----

***Statements***

To store information on a computer you need:

- identify storage location
- identify how much storage information requires 

- ***C++ program*** - collection of functions. 
- ***Function*** - collection of statements.
- `=` - assignment operator from right to left (assign value to a storage location).
- `<<` - insertion operator - defined in *ostream* class
- ```>>``` - extraction operator - defined in *istream* class

```cpp
int x;  // - declaration statement / definition - variable is declared and it causes compiler to allocate memory space for variable. Declaration don't need to be the definition (something is declared but it don't need to have allocated space)
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

***function prototype*** - is for function as variable declaration for variables; decribe the function interface and needs to be before function definition; if you use it you will need to provide prototype in source code or with #include

***function definition*** - code for function workings

***keyword*** - vocabulary of a computer language: *int, void, return, double, etc..* - the list of them is in appendix "C++ Reserved Words"; functions and object names are not keywords

```cpp
double sqrt(double); //function prototype; initial double is type of returned value from sqrt; double in sqrt(double) is passed argument for sqrt  
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

### Chapter Review
<!-- 
<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 

    </summary>

</details> 
-->

<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
1. What are the modules of C++ programs called?
    </summary>
They are called functions.
</details>

<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
2. What does the following preprocessor directive do? 

```#include <iostream>```
</summary>
It causes the contents of the iostream file to be substituted for this directive before
final compilation.
</details>

<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
3. What does the following statement do?
using namespace std;
    </summary>
It makes definitions made in the std namespace available to a program.
</details> 

<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
4. What statement would you use to print the phrase “Hello, world” and then start a
new line?
    </summary>

```cout << "Hello, world\n";``` </br>
or </br>
```cout << "Hello, world" << endl;```
</details> 

<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
5. What statement would you use to create an integer variable with the name
cheeses ?
    </summary>
int cheeses;
</details> 

<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
6. What statement would you use to assign the value 32 to the variable cheeses ?
    </summary>
cheeses = 32;
</details> 

<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
7. What statement would you use to read a value from keyboard input into the vari-
able cheeses ?
    </summary>
cin >> cheeses;
</details> 

<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
8. What statement would you use to print “We have X varieties of cheese,” where the
current value of the cheeses variable replaces X ?
    </summary>

```cout << "We have " << cheeses << " varieties of cheese\n";```
</details> 

<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
9. What do the following function prototypes tell you about the functions?
int froop(double t);
void rattle(int n);
int prune(void);
    </summary>
The function froop() expects to be called with one argument, which will be type
double , and that the function will return a type int value. For instance, it could be
used as follows: <br/>

```int gval = froop(3.14159);```
The function rattle() has no return value and expects an int argument. For
instance, it could be used as follows:
rattle(37);

The function prune() returns an int and expects to be used without an argument.
For instance, it could be used as follows:
int residue = prune();
</details> 

<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
10. When do you not have to use the keyword return when you define a function?
    </summary>
You don’t have to use return in a function when the function has the return type
void . However, you can use it if you don’t give a return value:
return;
</details> 

<details style="margin-left: 35px;">
    <summary style="margin-left: -35px;"> 
11. Suppose your main() function has the following line:


```cout << “Please enter your PIN: “;```

And suppose the compiler complains that cout is an unknown identifier. </br>
What is the likely cause of this complaint, and what are three ways to fix the problem?
    </summary>
Lack of caller for std library. </br>
Use directive: ```using namespace std;``` or ```using std::cout``` for only `cout` or call library with `std::cout` instead of `cout` 
</details> 



### Exercises

```
```

## Chapter 3: Dealing with Data

To store item of information on a computer you need to track:
- Where the information is stored
- What value is kept there
- What kind of information is stored

C++ naming rules: 
- Only characters you can use in names are: alphabetic characters, numeric digits and underscore character
- The first character in a name cannot be a nu,eric digit 
- Uppercase characters are considered distinct from lowercase characters
- You can't use C++ keyword for a name 
- Names beginning with two underscore characters or with an underscore character followed by an uppercase letter are reseved for use by implementation (the compiler and the resources it uses). 
- Names beggining with single underscore character are reserved for use as global identifiers bt the implementation
- C++ places no limits on the length of a name, and all characters in a name are significant (but some platforms can have their own length limits). 

*width* - term for the amount of memory used to hold variable  