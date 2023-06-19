# Reviews && Exercises

---

## Chapter 2 Review

<details><summary>      <!-- -------------------------------------------- -->
1. What are the modules of C++ programs called?
</summary>

```They are called functions.```
</details>              <!-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> -->

<details><summary>      <!-- -------------------------------------------- -->
2. What does the following preprocessor directive do?

```#include <iostream>```
</summary>
It causes the contents of the iostream file to be substituted for this
directive before final compilation.
</details>              <!-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> -->

<details><summary>      <!-- -------------------------------------------- -->
3. What does the following statement do?

``using namespace std;``
</summary>
It makes definitions made in the std namespace available to a program.
</details>              <!-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> -->

<details><summary>      <!-- -------------------------------------------- -->
4. What statement would you use to print the phrase “Hello, world” and then
start a new line?
</summary>

``cout << "Hello, world\n";``
or
``cout << "Hello, world" << endl;``
</details>              <!-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> -->

<details><summary>      <!-- -------------------------------------------- -->
5. What statement would you use to create an integer variable with the name
cheeses ?
</summary>

```cpp
int cheeses;
```

</details>              <!-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> -->

<details><summary>      <!-- -------------------------------------------- -->
6. What statement would you use to assign the value 32 to the variable cheeses ?
</summary>

```cpp
cheeses = 32;
```

</details>              <!-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> -->

<details><summary>      <!-- -------------------------------------------- -->
7. What statement would you use to read a value from keyboard input into the<br>
&emsp;variable cheeses ?
</summary>

```cpp
cin >> cheeses;
```

</details>              <!-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> -->

<details><summary>      <!-- -------------------------------------------- -->
8. What statement would you use to print “We have X varieties of cheese,”<br>
&emsp;where the current value of the cheeses variable replaces X ?
    </summary>

```cpp
cout << "We have " << cheeses << " varieties of cheese\n";
```

</details>              <!-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> -->

<details><summary>      <!-- -------------------------------------------- -->
9. What do the following function prototypes tell you about the functions?

``int prune(void);``<br>
``int froop(double t);``<br>
``void rattle(int n);``

</summary>

The function froop() expects to be called with one argument, which will be type
double, and that the function will return a type int value. For instance, it
could be used as follows: ``int gval = froop(3.14159);``

The function rattle() has no return value and expects an int argument.
For instance, it could be used as follows: ``rattle(37);``

The function prune() returns an int and expects to be used without an argument.
For instance, it could be used as follows: ``int residue = prune();``
</details>              <!-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> -->

<details><summary>      <!-- -------------------------------------------- -->
10.  When do you not have to use the keyword return when you define a function?
</summary>

You don’t have to use return in a function when the function has the return type
`void`. However, you can use it if you don’t give a return value: ``return;``
</details>              <!-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> -->

<details><summary>      <!-- -------------------------------------------- -->
11. Suppose your main() function has the following line:

``cout << “Please enter your PIN: “;``
And suppose the compiler complains that cout is an unknown identifier.
What is the likely cause of this complaint, and what are three ways to fix the problem?
    </summary>
***Lack of caller for std library.***
Use directive: ``using namespace std;`` or ``using std::cout`` for only
`cout` or call library with `std::cout` instead of `cout`
</details>              <!-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> -->

---

## Chapter 2 Programming Exercises

[1.](./exercises/exercise_ch2_1.cpp)
Write a C++ program that displays your name and address (or if you value your
privacy,a fictitious name and address).

[2.](./exercises/exercise_ch2_2.cpp)
Write a C++ program that asks for a distance in furlongs and converts it to yards.
(One furlong is 220 yards.)

[3.](./exercises/exercise_ch2_3.cpp)
Write a C++ program that uses three user-defined functions
(counting `main()` as one) and produces the following output:

```sh
Three blind mice
Three blind mice
See how they run
See how they run
```

One function,called two times,should produce the first two lines, and the remain-
ing function, also called twice, should produce the remaining output.

[4.](./exercises/exercise_ch2_4.cpp)
Write a program that asks the user to enter his or her age.
The program then should display the age in months:

```sh
Enter your age: 29
Your age in months is 384.
```

[5.](./exercises/exercise_ch2_5.cpp)
Write a program that has `main()` call a user-defined function that takes a
Celsius temperature value as an argument and then returns the equivalent
Fahrenheit value.The program should request the Celsius value as input from
the user and displaythe result, as shown in the following code:

```sh
Please enter a Celsius value: 20
20 degrees Celsius is 68 degrees Fahrenheit.
```

For reference,here is the formula for making the conversion:
`Fahrenheit = 1.8 × degrees Celsius + 32.0`

[6.](./exercises/exercise_ch2_6.cpp)
Write a program that has `main()` call a user-defined function that takes
a distance in light years as an argument and then returns the distance
in astronomical units.The program should request the light year value as
input from the user and display the result,as shown in the following code:

```sh
Enter the number of light years: 4.2
4.2 light years = 265608 astronomical units.
```

An astronomical unit is the average distance from the earth to the sun
(about 150,000,000 km or 93,000,000 miles), and a light year is the distance
light travels in a year (about 10 trillion kilometers or 6 trillion miles).
(The nearest star after thesun is about 4.2 light years away.) Use type double
(as in Listing 2.4 (page 51)) and this conversion factor:

```sh
1 light year = 63,240 astronomical units
```

[7.](./exercises/exercise_ch2_7.cpp)
Write a program that asks the user to enter an hour value and a minute value.
The `main()` function should then pass these two values to a type `void`
function that displays the two values in the format shown in the following
sample run:

```sh
Enter the number of hours: 9
Enter the number of minutes: 28
Time: 9:28
```

## Chapter 3 Review

<details><summary>      <!-- -------------------------------------------- -->
1. Why does C++ have more than one integer type?
</summary>

Having more than one integer type lets you choose the type that is best suited to
a particular need. For example, you could use `short` to conserve space or `long
to guarantee storage capacity or to find that a particular type speeds up a
particular calculation.

</details>              <!-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> -->

<details><summary>      <!-- -------------------------------------------- -->
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

<details><summary>
3. What safeguards does C++ provide to keep you from exceeding the limits of an
integer type?
    </summary>

C++ provides no automatic safeguards to keep you from exceeding integer limits;
you can use the climits header file to determine what the limits are.
</details>

<details><summary>
4. What is the distinction between 33L and 33?
    </summary>

The constant 33L is type long, whereas the constant 33 is type int.
</details>

<details><summary>
5. Consider the two C++ statements that follow:

```cpp
char grade = 65;
char grade = 'A';
```

Are they equivalent?
    </summary>

The two statements are not really equivalent, although they have the same effect
on some systems. Most importantly, the first statement assigns the letter `A`
to grade only on a system using the `ASCII` code, while the second statement
also works for other codes. Second, `65` is a type int constant, whereas `'A'`
is a type char constant.
</details>

<details><summary>
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

<details><summary>
7. Assigning a `long` value to a `float` can result in a rounding error.
What about assigning `long` to `double`? `long long` to `double`?
    </summary>

The answer depends on how large the two types are. If `long` is 4 bytes,
there is no loss. That’s because the largest `long` value would be about
2 billion, which is 10 digits. Because `double` provides at least 13 significant
figures, no rounding would be needed. The `long long` type, on the other hand,
can reach 19 digits, which exceeds the 13 significant figures guaranteed for `double`.
</details>

<details><summary>
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

<details><summary>
9.  Suppose `x1` and `x2` are two type `double` variables that you want to
add as `integers` and assign to an `integer` variable. Construct a C++ statement
for doing so. What if you want to add them as type `double` and then convert to `int`?

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

<details><summary>
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

## Chapter 3 Programming Exercises

[1.](./exercises/exercise_ch3_1.cpp) Write a short program that asks
for your height in integer inches and then converts your height to feet and inches.
Have the program use the underscore character to indicate where to type the response.
Also use a const symbolic constant to represent the conversion factor.

[2.](./exercises/exercise_ch3_2.cpp)  Write a short program that asks for your
height in feet and inches and your weight in pounds. (Use three variables to store
the information.) Have the program report your body mass index (BMI).To calculate
the BMI, first convert your height in feet and inches to your height in inches
(1 foot = 12 inches). Then convert your height in inches to your height in meters
by multiplying by 0.0254.Then convert your weight in pounds into your mass in kilograms
by dividing by 2.2. Finally, compute your BMI by dividing your mass in kilograms
by the square of your height in meters. Use symbolic constants to represent the
various conversion factors.

[3.](./exercises/exercise_ch3_3.cpp) Write a program that asks the user to enter
a latitude in degrees, minutes, and seconds and that then displays the latitude
in decimal format.There are 60 seconds of arc to a minute and 60 minutes of arc
to a degree; represent these values with symbolic constants.You should use a separate
variable for each input value. A sample run should look like this:

```cpp
Enter a latitude in degrees, minutes, and seconds:
First, enter the degrees: 37
Next, enter the minutes of arc: 51
Finally, enter the seconds of arc: 19
37 degrees, 51 minutes, 19 seconds = 37.8553 degrees
```

[4.](./exercises/exercise_ch3_4.cpp) Write a program that asks the user to enter
the number of seconds as an integer value (use type long, or, if available, long long)
and that then displays the equivalent time in days, hours, minutes, and seconds.
Use symbolic constants to represent the number of hours in the day, the number of
minutes in an hour, and the number of seconds in a minute.The output should look
like this:

```cpp
Enter the number of seconds: 31600000 
31600000 seconds = 365 days, 17 hours, 46 minutes, 40 seconds
```

[5.](./exercises/exercise_ch3_5.cpp) Write a program that requests the user to
enter the current world population and the current population of the U.S. (or of
some other nation of your choice). Store the information in variables of type long long.
Have the program display the percent that the U.S. (or other nation’s) population
is of the world’s population.The output should look something like this:

```cpp
Enter the world's population: 6898758899
Enter the population of the US: 310783781
The population of the US is 4.50492% of the world population.
```

You can use the Internet to get more recent figures.

[6.](./exercises/exercise_ch3_6.cpp) Write a program that asks how many miles you
have driven and how many gallons of gasoline you have used and then reports the miles
per gallon your car has gotten. Or, if you prefer, the program can request distance
in kilometers and petrol in liters and then report the result European style,
in liters per 100 kilometers.

[7.](./exercises/exercise_ch3_7.cpp) Write a program that asks you to enter an
automobile gasoline consumption figure in the European style (liters per 100 kilometers)
and converts to the U.S. style of miles per gallon. Note that in addition to using
different units of measurement, the U.S. approach (distance / fuel) is the
inverse of the European approach (fuel / distance).
Note that 100 kilometers is 62.14 miles, and 1 gallon is 3.875 liters.
Thus, 19 mpg is about 12.4 l/100 km, and 27 mpg is about 8.7 l/100 km.

## Chapter 4 Review

<!-- -------------------------------------------- -->

<details><summary>
1. How would you declare each of the following?

```cpp
a. actors is an array of 30 char.
b. betsie is an array of 100 short.
c. chuck is an array of 13 float.
d. dipsea is an array of 64 long double.
```

</summary>

```cpp
char actors[30];
short betsie[100];
float chuck[13];
long double dipsea[64];
```

</details>

<details><summary>
2. Do Chapter Review Question 1 and use the array template class instead of
built-in arrays.
    </summary>

```cpp
array<char, 30> actors;
array<short, 100> betsie;
array<float, 13> chuck;
array<long double, 64> dipsea;
```

</details>

<details><summary>
3. Declare an array of five ints and initialize it to the first five odd
positive integers
    </summary>

```cpp
int oddly[5] = {1, 3, 5, 7, 9};
array<int, 5> at {1, 3, 5, 7, 9}; // also correct
```

</details>

<details><summary>
4. Write a statement that assigns the sum of the first and last elements of the
array in Question 3 to the variable even.
    </summary>

```cpp
int even = array[0] + array[4]; 
```

</details>

<details><summary>
5. Write a statement that displays the value of the second element in the float
array ideas.
    </summary>

```cpp
std::cout << ideas[1];
```

</details>

<details><summary>
6. Declare an array of char and initialize it to the string "cheeseburger".
    </summary>

```cpp
char food[] {"cheeseburger"};
// or
char lunch[13] = "cheeseburger"; // number of characters + 1
```

</details>

<details><summary>
7. Declare a string object and initialize it to the string "Waldorf Salad".
    </summary>

```cpp
std::string obj = "Waldorf Salad";
```

</details>

<details><summary>
8. Devise a structure declaration that describes a fish.The structure should
include the kind, the weight in whole ounces, and the length in fractional inches.
    </summary>

```cpp
struct fish {
    char kind[20];
    int weight;
    float length;
};
```

</details>

<details><summary>
9. Declare a variable of the type defined in Question 8 and initialize it.
    </summary>

```cpp
fish petes =
{
    "trout",
    12,
    26.25
};

// fish flounder; //??
// flounder.kind = "fishy";
// flounder.weight = 21;
// flounder.length = 21;
```

</details>

<details><summary>
10.  Use enum to define a type called Response with the possible values Yes,
No, and Maybe.<br> Yes should be 1, No should be 0, and Maybe should be 2.
    </summary>

```cpp
enum response {No, Yes, Maybe};
```

</details>

<details><summary>
11.  Suppose ted is a double variable.
Declare a pointer that points to ted and use the pointer to display ted’s value.
    </summary>

```cpp
double *ptrTed = &ted;
std::cout << *ptrTed;
```

</details>

<details><summary>
12.  Suppose treacle is an array of 10 floats. Declare a pointer that points
to the first element of treacle and use the pointer to display the first and
last elements of the array.
    </summary>

</details>

```cpp
float *ptrTreacle = treacle; // or = &treacle[0]
cout << pf[0] << " " << pf[9] << "\n";
std::cout << ptrTreacle[0] << "last" << ptrTreacle[9];
// or use:
// std::cout << *(ptrTreacle + 1) << "last" << *(ptrTreacle + 9);
```

<details><summary>
13. Write a code fragment that asks the user to enter a positive integer and
then creates a dynamic array of that many ints.
Do this by using new, then again using a vector object.
    </summary>

```cpp
unsigned int iUsr {};
cout << "Enter a positive integer: ";
std::cin >> iUsr;

int *sth = new int[iUsr];
vector<int> sth(iUsr);
```

</details>

<details><summary>
14. Is the following valid code? If so, what does it print?

```cpp
cout << (int *) “Home of the jolly bytes”;
```

</summary>

//Yes
//Start of memory of this Literal
Yes, it is valid.The expression "Home of the jolly bytes" is a string constant;
hence it evaluates as the address of the beginning of the string.The cout object
interprets the address of a char as an invitation to print a string, but the type cast
(int *) converts the address to type pointer-to-int, which is then printed as an
address. In short, the statement prints the address of the string, assuming the int
type is wide enough to hold an address.
</details>

<details><summary>
15. Write a code fragment that dynamically allocates a structure of the type
described in Question 8 and then reads a value for the `kind` member of the structure.
    </summary>

```cpp
struct fish
{
    char kind[20];
    int weight;
    float length;
};

int main(){
    fish * pole = new fish;    

    std::cout << "Enter kind of fish: ";
    std::cin >> pole->kind;
}
```

</details>

<details><summary>
16. Listing 4.6 illustrates a problem created by following numeric input with
line-oriented string input. How would replacing:

```cpp
// this:
cin.getline(address,80);
// with this:
cin >> address;
// affect the working of this program?
```

</summary>

//cin >> address will read from user only to the space. Data after space will be in the queue;
Using cin >> address causes a program to skip over whitespace until it finds nonwhitespace.
It then reads characters until it encounters whitespace again.Thus, it
will skip over the newline following the numeric input, avoiding that problem. On
the other hand, it will read just a single word, not an entire line.
</details>

<details><summary>
17. Declare a vector object of 10 string objects and an array object of 10 string objects.
Show the necessary header files and don’t use using. Do use a const for the number of strings.
</summary>

```cpp
#include <string>
#include <vector>
#include <array>

// vector<string> vSth(10);
// array<string, 10> aSth;

const int Str_num {10}; // or = 10
...
std::vector<std::string> vstr(Str_num);
std::array<std::string, Str_num> astr;
```

</details>

## Chapter 4 Programming Exercises

[1.](./exercises/exercise_ch4_1.cpp)
Write a C++ program that requests and displays
information as shown in the following.

Example of output:

```cpp
What is your first name? Betty Sue
What is your last name? Yewe
What letter grade do you deserve? B
What is your age? 22
Name: Yewe, Betty Sue
Grade: C
Age: 22
```

Note that the program should be able to accept first names that comprise more than one word.
Also note that the program adjusts the grade downward—that is, up one letter.
Assume that the user requests an A, a B, or a C so that you don’t have to worry
about the gap between a D and an F.

[2.](./exercises/exercise_ch4_2.cpp)
Rewrite Listing 4.4, using the C++ string class instead of char arrays.

[3.](./exercises/exercise_ch4_3.cpp)
Write a program that asks the user to enter his or her first name and then last name,
and that then constructs, stores, and displays a third string, consisting of the
user’s last name followed by a comma, a space, and first name. Use char arrays and
functions from the cstring header file.A sample run could look like this:

```cpp
Enter your first name: Flip
Enter your last name: Fleming
Here’s the information in a single string: Fleming, Flip
```

[4.](./exercises/exercise_ch4_4.cpp)
Write a program that asks the user to enter his or her first name and then last name,
and that then constructs, stores, and displays a third string consisting of the user’s
last name followed by a comma, a space, and first name. Use string objects and methods
from the string header file. A sample run could look like this:

```cpp
Enter your first name: Flip
Enter your last name: Fleming
Here’s the information in a single string: Fleming, Flip
```

[5.](./exercises/exercise_ch4_5.cpp)
The CandyBar structure contains three members. The first member holds the brand name of a candy bar.
The second member holds the weight (which may have a fractional part) of the candy bar,
and the third member holds the number of calories (an integer value) in the candy bar.
Write a program that declares such a structure and creates a CandyBar variable called snack,
initializing its members to "Mocha Munch", 2.3, and 350, respectively.The initialization should
be part of the declaration for snack.
Finally, the program should display the contents of the snack variable.

[6.](./exercises/exercise_ch4_6.cpp)
The CandyBar structure contains three members,
as described in Programming Exercise 5.Write a program that creates an array of
three CandyBar structures, initializes them to values of your choice, and then
displays the contents of each structure.

[7.](./exercises/exercise_ch4_7.cpp)
William Wingate runs a pizza-analysis service.
For each pizza, he needs to record the following information:

- The name of the pizza company, which can consist of more than one word
- The diameter of the pizza
- The weight of the pizza

Devise a structure that can hold this information and write a program that uses
a structure variable of that type.The program should ask the user to enter
each of the preceding items of information, and then the program should display
that information. Use cin (or its methods) and cout.

[8.](./exercises/exercise_ch4_8.cpp)
Do Programming Exercise 7 but use new to allocate a structure instead of
declaring a structure variable. Also have the program request the pizza
diameter before it requests the pizza company name.

[9.](./exercises/exercise_ch4_9.cpp)
Do Programming Exercise 6, but instead of declaring an array of three CandyBar
structures, use new to allocate the array dynamically.

[10.](./exercises/exercise_ch4_10.cpp)
Write a program that requests the user to enter three times for the 40-yd dash
(or 40-meter, if you prefer) and then displays the times and the average.
Use an array object to hold the data. (Use a built-in array if array is not available.)

## Chapter 5 Review

<!-- -------------------------------------------- -->
<details><summary>
1. What’s the difference between an entry-condition loop and an exit-condition loop?
Which kind is each of the C++ loops?
    </summary>
// entry-condition loop - check condition before entering the loop <br>
// exit-condition loop -  check condition at the end of loop, making at least 1 loop<br><br>

An entry-condition loop evaluates a test expression before entering the body of the
loop. If the condition is initially false, the loop never executes its body.An exitcondition
loop evaluates a test expression after processing the body of the loop.
Thus, the loop body is executed once, even if the test expression is initially false.
The for and while loops are entry-condition loops, and the do while loop is an
exit-condition loop
</details>

<!-- -------------------------------------------- -->
<details><summary>
2. What would the following code fragment print if it were part of a valid program?

```cpp
int i;
for (i = 0; i < 5; i++)
    cout << i;
    cout << endl;
```

</summary>
01234

Note that cout << endl; is not part of the loop body (because there are no
braces).
</details>

<!-- -------------------------------------------- -->
<details><summary>
3. What would the following code fragment print if it were part of a valid program?

```cpp
int j;
for (j = 0; j < 11; j += 3)
    cout << j;
cout << endl << j << endl;
```

</summary>
It would print the following:<br>
0369<br>
12<br>
</details>

<!-- -------------------------------------------- -->
<details><summary>
4. What would the following code fragment print if it were part of a valid program?

```cpp
int j = 5;
while ( ++j < 9)
    cout << j++ << endl;
```

</summary>
It would print the following:<br>
6<br>
8
</details>

<!-- -------------------------------------------- -->
<details><summary>
5. What would the following code fragment print if it were part of a valid program?

```cpp
int k = 8;
do
    cout <<" k = " << k << endl;
while (k++ < 5);
```

</summary>
It would print the following:<br>
k = 8
</details>

<!-- -------------------------------------------- -->
<details><summary>
6. Write a `for` loop that prints the values 1 2 4 8 16 32 64 by increasing the value of
a counting variable by a factor of two in each cycle.
    </summary>
It’s simplest to use the *= operator:<br>

```cpp
for(int i {}; i < 65; i *= 2)
    cout << i << " ";
```

</details>

<!-- -------------------------------------------- -->
<details><summary>
7. How do you make a loop body include more than one statement?
    </summary>
//add curly braces {} <br>

You enclose the statements within paired braces to form a single compound statement,
or block.
</details>

<!-- -------------------------------------------- -->
<details><summary>
8. Is the following statement valid? If not, why not? If so, what does it do?

```cpp
int x = (1,024);
```

What about the following?

```cpp
int y;
y = 1,024;
```

</summary>
//1st is valid, but 1 will be assigned to x due to precedence and first value will do nothing <br>
//in 2nd 1 will be assigned to y, and 024 will do nothing, but confuse. <br><br>

Yes, the first statement is valid.The expression 1,024 consists of two expressions—1
and 024—joined by a comma operator.The value is the value of the right-hand
expression.This is 024, which is octal for 20, so the declaration assigns the value 20
to x.The second statement is also valid. However, operator precedence causes it to
be evaluated as follows:

```cpp
(y = 1), 024;
```

That is, the left expression sets y to 1, and the value of the entire expression, which
isn’t used, is `024`, or `20`.

</details>

<!-- -------------------------------------------- -->
<details><summary>
9. How does cin >> ch differ from cin.get(ch) and ch=cin.get() in how it views
input?
    </summary>
//cin>>ch will omit spaces, cin.get(ch) will return bool true, false if EOF,
ch=cin.get() will assign int value and EOF if EOF <br><br>

The `cin >> ch` form skips over spaces, newlines, and tabs when it encounters them.
The other two forms read those characters
</details>

## Chapter 5 Programming Exercises

[1.](./exercises/exercise_ch5_1.cpp)
Write a program that requests the user to enter two integers.The program should
then calculate and report the sum of all the integers between and including the two
integers. At this point, assume that the smaller integer is entered first. For example, if
the user enters 2 and 9, the program should report that the sum of all the integers
from 2 through 9 is 44.

[2.](./exercises/exercise_ch5_2.cpp)
Redo Listing 5.4 using a type array object instead of a built-in array and type
long double instead of long long. Find the value of 100!

[3.](./exercises/exercise_ch5_3.cpp)
Write a program that asks the user to type in numbers.After each entry, the program
should report the cumulative sum of the entries to date.The program should
terminate when the user enters 0.

[4.](./exercises/exercise_ch5_4.cpp)
Daphne invests `$100 at 10%` simple interest.That is, every year, the investment earns
`10%` of the original investment, or `$10` each and every year:

```sh
interest = 0.10 × original balance
```

At the same time, Cleo invests `$100` at `5%` compound interest.That is, interest is `5%`
of the current balance, including previous additions of interest:

```sh
interest = 0.05 × current balance
```

Cleo earns `5% of $100` the first year, giving her `$105`.The next year she earns `5%` of
`$105`, or `$5.25`, and so on. Write a program that finds how many years it takes for
the value of Cleo’s investment to exceed the value of Daphne’s investment and then
displays the value of both investments at that time.

[5.](./exercises/exercise_ch5_5.cpp)
You sell the book C++ for Fools. Write a program that has you enter a year’s worth
of monthly sales (in terms of number of books, not of money).The program should
use a loop to prompt you by month, using an array of char * (or an array of
string objects, if you prefer) initialized to the month strings and storing the input
data in an array of int.Then, the program should find the sum of the array contents
and report the total sales for the year.

[6.](./exercises/exercise_ch5_6.cpp)
Do Programming Exercise 5 but use a two-dimensional array to store input for 3
years of monthly sales. Report the total sales for each individual year and for the
combined years.

[7.](./exercises/exercise_ch5_7.cpp)
Design a structure called car that holds the following information about an automobile:
its make, as a string in a character array or in a string object, and the year
it was built, as an integer.Write a program that asks the user how many cars to catalog.
The program should then use new to create a dynamic array of that many car
structures. Next, it should prompt the user to input the make (which might consist
of more than one word) and year information for each structure. Note that this
requires some care because it alternates reading strings with numeric data (see
Chapter 4). Finally, it should display the contents of each structure.A sample run
should look something like the following:

```sh
How many cars do you wish to catalog? 2
Car #1:
Please enter the make: Hudson Hornet
Please enter the year made: 1952
Car #2:
Please enter the make: Kaiser
Please enter the year made: 1951
Here is your collection:
1952 Hudson Hornet
1951 Kaiser
```

[8.](./exercises/exercise_ch5_8.cpp)
Write a program that uses an array of char and a loop to read one word at a time
until the word done is entered.The program should then report the number of
words entered (not counting done).A sample run could look like this:

```sh
Enter words (to stop, type the word done):
anteater birthday category dumpster
envy finagle geometry done for sure
You entered a total of 7 words.
```

You should include the cstring header file and use the strcmp() function to
make the comparison test.

[9.](./exercises/exercise_ch5_9.cpp)
Write a program that matches the description of the program in Programming
Exercise 8, but use a string class object instead of an array. Include the string
header file and use a relational operator to make the comparison test.

[10.](./exercises/exercise_ch5_10.cpp)
Write a program using nested loops that asks the user to enter a value for the
number of rows to display. It should then display that many rows of asterisks, with
one asterisk in the first row, two in the second row, and so on. For each row, the
asterisks are preceded by the number of periods needed to make all the rows
display a total number of characters equal to the number of rows.A sample run
would look like this:

```sh
Enter number of rows: 5
....*
...**
..***
.****
*****
```

## Chapter 6 Review

<!-- -------------------------------------------- -->
<details><summary>
1. Consider the following two code fragments for counting spaces and newlines

```cpp
// Version 1
while (cin.get(ch)) // quit on eof
{
    if (ch == ' ')
        spaces++;
    if (ch == '\n')
        newlines++;
}
// Version 2
while (cin.get(ch)) // quit on eof
{
    if (ch == ' ')
        spaces++;
    else if (ch == '\n')
        newlines++;
}
```

What advantages, if any, does the second form have over the first?
</summary>
// Because version 1 checks every times both conditions, thus it's less efficient.<br>
// Version 2 checks 2 condition only if first is not true.<br><br>

Both versions give the same answers, but the if else version is more efficient.
Consider what happens, for example, when ch is a space.Version 1, after incrementing
spaces, tests whether the character is a newline.This wastes time because the
program has already established that ch is a space and hence could not be a newline.
Version 2, in the same situation, skips the newline test.
</details>

<!-- -------------------------------------------- -->
<details><summary>
2. In Listing 6.2, what is the effect of replacing ++ch with ch+1?

```cpp
Listing 6.2 ifelse.cpp
// ifelse.cpp -- using the if else statement
#include <iostream>
    int
    main()
{
    char ch;
    std::cout << "Type, and I shall repeat.\n";
    std::cin.get(ch);
    while (ch != '.')
    {
        if (ch == '\n')
            std::cout << ch; // done if newline
        else
            std::cout << ++ch; // done otherwise
        std::cin.get(ch);
    }
    std::cout << "\nPlease excuse the slight confusion.\n";
    return 0;
}
```

</summary>

// The `char` is promoted to `int`, and display numbers

Both `++ch` and `ch + 1` have the same numerical value. But `++ch` is type char and
prints as a character, while `ch + 1`, because it adds a `char` to an `int`,
is type `int` and prints as a number.

</details>

<!-- -------------------------------------------- -->
<details><summary>
3. Carefully consider the following program:

```cpp
#include <iostream>
using namespace std;
int main()
{
    char ch;
    int ct1, ct2;
    ct1 = ct2 = 0;
    while ((ch = cin.get()) != '$')
    {
        cout << ch;
        ct1++;
        if (ch = '$')
            ct2++;
        cout << ch;
    }
    cout << "ct1 = " << ct1 << ", ct2 = " << ct2 << "\n";
    return 0;
}
```

Suppose you provide the following input, pressing the Enter key at the end of each line:

```sh
Hi!
Send $10 or $20 now!
```

What is the output? (Recall that input is buffered.)
    </summary>

// Program print after every read character `$` and if in input is `$`, the while loop will end.
// `Hi!`
// `H$i$!$`
// `$Send $10 or $20 now!`
// `S$e$n$d$ $ct1 = 8, ct2 = 8` // `$` is added even newline, and `ct` is added with it, I didn't include that

Because the program uses `ch = '$'` instead of `ch == '$'`, the combined input and
output looks like this:

```sh
Hi!
H$i$!$
$Send $10 or $20 now!
S$e$n$d$ $ct1 = 9, ct2 = 9
```

Each character is converted to the `$` character before being printed the second
time.Also the value of the expression `ch = $` is the code for the `$` character, hence
nonzero, hence `true`; so `ct2` is incremented each time.
</details>

<!-- -------------------------------------------- -->
<details><summary>
4. Construct logical expressions to represent the following conditions:

```cpp
    a. weight is greater than or equal to 115 but less than 125.
    b. ch is q or Q.
    c. x is even but is not 26.
    d. x is even but is not a multiple of 26.
    e. donation is in the range 1,000–2,000 or guest is 1.
    f. ch is a lowercase letter or an uppercase letter. (Assume, as is true for ASCII, 
    that lowercase letters are coded sequentially and that uppercase letters are coded 
    sequentially but that there is a gap in the code between uppercase and lowercase.)
```

</summary>

```cpp
weight >= 115 && weight < 125                           //a
ch == `q` || ch == `Q`                                  //b
x % 2 == 0 && x != 26                                   //c

x % 2 == 0 && x % 26 != 0                               //d
x % 2 == 0 && !(x % 26 == 0)                            //d
donation >= 1000 && donation <= 2000 || guest == 1      //e

(ch => `a` && ch <= z) || (ch >= `A` && ch <= `Z`)      //f
isalpha(ch)                                             //f
```

</details>

<!-- -------------------------------------------- -->
<details><summary>
5. In English, the statement “I will not not speak” means the same as
“I will speak.” In C++, is !!x the same as x?
    </summary>

// No. Return from `!!x` is boolean/int, while `x` have defined type by programmer

Not necessarily. For example, if `x` is 10, then `!x` is 0 and `!!x` is 1.
However, if `x` is a `bool` variable, then `!!x` is `x`.
</details>

<!-- -------------------------------------------- -->
<details><summary>
6. Construct a conditional expression that is equal to the absolute value of a variable.
That is, if a variable x is positive, the value of the expression is just x,
but if x is negative, the value of the expression is -x, which is positive.
    </summary>

```cpp
// x > 0 ? x : -x

(x < 0)? -x : x
// or
(x >= 0)? x : -x;
```

</details>

<!-- -------------------------------------------- -->
<details><summary>
7. Rewrite the following fragment using switch:

```cpp
if (ch == 'A')
    a_grade++;
else if (ch == 'B')
    b_grade++;
else if (ch == 'C')
    c_grade++;
else if (ch == 'D')
    d_grade++;
else
    f_grade++;
```

</summary>

```cpp
switch (ch)
{
    case `A`:   a_grade++;
                break;
    case `B`:   b_grade++;
                break;
    case `C`:   c_grade++;
                break;
    case `D`:   d_grade++;
                break;
    default:    f_grade++;
                break;
}
```

</details>

<!-- -------------------------------------------- -->
<details><summary>
8. In Listing 6.10, what advantage would there be in using character labels,
such as a and c, instead of numbers for the menu choices and switch cases?
(Hint:Think about what happens if the user types q in either case and what
happens if the user types 5 in either case.)

```cpp
Listing 6.10 switch.cpp
// switch.cpp -- using the switch statement
#include <iostream>
    using namespace std;
void showmenu(); // function prototypes
void report();
void comfort();
int main()
{
    showmenu();
    int choice;
    cin >> choice;
    while (choice != 5)
    {
        switch (choice)
        {
        case 1:
            cout << "\a\n";
            break;
        case 2:
            report();
            break;
        case 3:
            cout << "The boss was in all day.\n";
            break;
        case 4:
            comfort();
            break;
        default:
            cout << "That's not a choice.\n";
        }
        showmenu();
        cin >> choice;
    }
    cout << "Bye!\n";
    return 0;
}
void showmenu()
{
    cout << "Please enter 1, 2, 3, 4, or 5:\n"
            "1) alarm 2) report\n"
            "3) alibi 4) comfort\n"
            "5) quit\n";
}
void report()
{
    cout << "It's been an excellent week for business.\n"
            "Sales are up 120%. Expenses are down 35%.\n";
}
void comfort()
{
    cout << "Your employees think you are the finest CEO\n"
            "in the industry. The board of directors think\n"
            "you are the finest CEO in the industry.\n";
}
```

</summary>
// Character labels would be more resistant to invalid input (characters promoted to int instead numbers);<br>
// It would also not go into infinite loop due to buffered characters from user input <br> <br>

If you use integer labels and the user types a noninteger such as q, the program
hangs because integer input can’t process a character. But if you use character labels
and the user types an integer such as 5, character input will process 5 as a character.
Then the default part of the switch can suggest entering another character.
</details>

<!-- -------------------------------------------- -->
<details><summary>
9. Consider the following code fragment:

```cpp
int line = 0;
char ch;
while (cin.get(ch))
{
    if (ch == 'Q')
        break;
    if (ch != '\n')
        continue;
    line++;
}
```

Rewrite this code without using break or continue.
    </summary>

```cpp
int line = 0;
char ch;
while (cin.get(ch) && ch != 'Q')
{
    if (ch == '\n')
        line++;
}
```

</details>

## Chapter 6 Programming Exercises

[1.](./exercises/exercise_ch6_1.cpp)
Write a program that reads keyboard input to the @ symbol and that echoes the input except for digits,
converting each uppercase character to lowercase, and vice versa. (Don’t forget the `cctype` family.)

[2.](./exercises/exercise_ch6_2.cpp)
Write a program that reads up to 10 donation values into an array of double.
(Or, if you prefer, use an array template object.) The program should terminate
input on non-numeric input. It should report the average of the numbers and also
report how many numbers in the array are larger than the average.

[3.](./exercises/exercise_ch6_3.cpp)
Write a precursor to a menu-driven program.The program should display a menu
offering four choices, each labeled with a letter. If the user responds with a
letter other than one of the four valid choices, the program should prompt the
user to enter a valid response until the user complies.Then the program should
use a switch to select a simple action based on the user’s selection.
A program run could look something like this:

```sh
Please enter one of the following choices:
c) carnivore    p) pianist
t) tree         g) game
f
Please enter a c, p, t, or g: q
Please enter a c, p, t, or g: t
A maple is a tree.
```

[4.](./exercises/exercise_ch6_4.cpp)
When you join the Benevolent Order of Programmers, you can be known at BOP
meetings by your real name, your job title, or your secret BOP name.
Write a program that can list members by real name, by job title, by secret name,
or by a member’s preference. Base the program on the following structure:

```cpp
// Benevolent Order of Programmers name structure
struct bop
{
    char fullname[strsize]; // real name
    char title[strsize];    // job title
    char bopname[strsize];  // secret BOP name
    int preference;         // 0 = fullname, 1 = title, 2 = bopname
};
```

In the program, create a small array of such structures and initialize it to suitable values.
Have the program run a loop that lets the user select from different alternatives:

```sh
a. display by name      b. display by title
c. display by bopname   d. display by preference
q. quit
```

Note that “display by preference” does not mean display the preference member;
it means display the member corresponding to the preference number.
For instance, if preference is 1, choice d would display the programmer’s
job title.A sample run may look something like the following:

```sh
Benevolent Order of Programmers Report
a. display by name b. display by title
c. display by bopname d. display by preference
q. quit
Enter your choice: a
Wimp Macho
Raki Rhodes
Celia Laiter
Hoppy Hipman
Pat Hand
Next choice: d
Wimp Macho
Junior Programmer
MIPS
Analyst Trainee
LOOPY
Next choice: q
Bye!
```

[5.](./exercises/exercise_ch6_5.cpp)
The Kingdom of Neutronia, where the unit of currency is the tvarp, has the following income tax code:

```sh
    First 5,000 tvarps: 0% tax
    Next 10,000 tvarps: 10% tax
    Next 20,000 tvarps: 15% tax
    Tvarps after 35,000: 20% tax
```

For example, someone earning 38,000 tvarps would owe
5,000 × 0.00 + 10,000 × 0.10 + 20,000 × 0.15 + 3,000 × 0.20, or 4,600 tvarps.
Write a program that uses a loop to solicit incomes and to report tax owed.
The loop should terminate when the user enters a negative number or non-numeric input.

[6.](./exercises/exercise_ch6_6.cpp)

Put together a program that keeps track of monetary contributions to the Society
for the Preservation of Rightful Influence. It should ask the user to enter
the number of contributors and then solicit the user to enter the name and
contribution of each contributor.The information should be stored in a dynamically
allocated array of structures. Each structure should have two members:
a character array (or else a `string` object) to store the name and a `double`
member to hold the amount of the contribution.After reading all the data,
the program should display the names and amounts donated for all donors
who contributed $10,000 or more.This list should be headed by the label
Grand Patrons.After that, the program should list the remaining donors.
That list should be headed Patrons. If there are no donors in one of the categories,
the program should print the word “none.”Aside from displaying two categories,
the program need do no sorting.

[7.](./exercises/exercise_ch6_7.cpp)
Write a program that reads input a word at a time until a lone q is entered.
The program should then report the number of words that began with vowels,
the number that began with consonants, and the number that fit neither of
those categories. One approach is to use `isalpha()` to discriminate between
words beginning with letters and those that don’t and then use an `if` or `switch`
statement to further identify those passing the `isalpha()` test that begin with
vowels.A sample run might look like this:

```sh
Enter words (q to quit):
The 12 awesome oxen ambled
quietly across 15 meters of lawn. q
5 words beginning with vowels
4 words beginning with consonants
2 others
```

[8.](./exercises/exercise_ch6_8.cpp)

Write a program that opens a text file, reads it character-by-character to the
end of the file, and reports the number of characters in the file.

[9.](./exercises/exercise_ch6_9.cpp)
Do Programming Exercise 6 but modify it to get information from a file.The first
item in the file should be the number of contributors, and the rest of the file
should consist of pairs of lines, with the first line of each pair being a
contributor’s name and the second line being a contribution.
That is, the file should look like this:

```sh
4
Sam Stone
2000
Freida Flass
100500
Tammy Tubbs
5000
Rich Raptor
55000
```
