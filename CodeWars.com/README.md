[TOC]

# CodeWars

## 8 kyu

### Pillars

DESCRIPTION:
There are pillars near the road. The distance between the pillars is the same and the width of the pillars is the same. Your function accepts three arguments:

- number of pillars (≥ 1);
- distance between pillars (10 - 30 meters);
- width of the pillar (10 - 50 centimeters).

Calculate the distance between the first and the last pillar in centimeters (without the width of the first and last pillar).

```cpp
// -----  MY SOLUTION  ----- //
long pillars(int num_of_pillars, int distance, int width) {
  return num_of_pillars > 1 ? ((num_of_pillars - 1) * (distance * 100)) + ((num_of_pillars * width) - 2 * width) : 0;
}

// ----- BEST SOLUTION ----- //
long pillars(int n, int d, int w) {
  return n == 1? 0 : --n * d * 100 + --n * w;
}
```

###  Calculate average

Write a function which calculates the average of the numbers in a given list.
Note: Empty arrays should return 0.


```cpp
// -----  MY SOLUTION  ----- //
#include <vector>

double calcAverage(const std::vector<int>& values){
  int iCounter {};
  double dAverage {};
  
  for (int i {}; i < values.size(); i++){
    dAverage += values[i];
    ++iCounter;
  }
  
  return (dAverage / iCounter);
}

// ----- BEST SOLUTION ----- //
#include <vector>
#include <numeric>
using namespace std; 

double calcAverage(const vector<int>& values){
  return accumulate(values.begin(),values.end(), 0.0) / values.size();
}

```

### Beginner Series #1 School Paperwork
Your classmates asked you to copy some paperwork for them. You know that there are 'n' classmates and the paperwork has 'm' pages.

Your task is to calculate how many blank pages do you need. If n < 0 or m < 0 return 0.

Example:
n= 5, m=5: 25
n=-5, m=5:  0
Waiting for translations and Feedback! Thanks!
```cpp
// -----  MY SOLUTION  ----- //
// ----- BEST SOLUTION ----- //
int paperwork(int n, int m){
  return (n < 0 || m < 0) ? 0 : n * m;
}
```

### Keep Hydrated
Nathan loves cycling.

Because Nathan knows it is important to stay hydrated, he drinks 0.5 litres of water per hour of cycling.

You get given the time in hours and you need to return the number of litres Nathan will drink, rounded to the smallest value.

For example:

time = 3 ----> litres = 1

time = 6.7---> litres = 3

time = 11.8--> litres = 5

```cpp
// -----  MY SOLUTION  ----- //
int litres(double time) {
    return time / 2;
}
```

### Count the number of cubes with paint on
Upon arriving at an interview, you are presented with a solid blue cube. The cube is then dipped in red paint, coating the entire surface of the cube. The interviewer then proceeds to cut through the cube in all three dimensions a certain number of times.

Your function takes as parameter the number of times the cube has been cut. You must return the number of smaller cubes created by the cuts that have at least one red face.

To make it clearer, the picture below represents the cube after (from left to right) 0, 1 and 2 cuts have been made.

Examples:
If we cut the cube 2 times, the function should return 26
If we cut the cube 4 times, the function should return 98

```cpp
// -----  MY SOLUTION  ----- //
int countSquares(int cuts)
{              // 4 sides * layersOfCubes - 1  // 2 sides * 3x3 cubesInCenter 
  return (cuts > 0) ? (4 * (cuts * (cuts+1)) + (2 * (cuts-1) * (cuts-1)) ) : 1;
}
// ----- BEST SOLUTION ----- //
int countSquares(int cuts)
{
    if (cuts == 0) return 1;
    return 2*(3*cuts*cuts + 1);
}
```

### Quadrants
Given a point in a Euclidean plane (x and y), return the quadrant the point exists in: 1, 2, 3 or 4 (integer). x and y are non-zero integers, therefore the given point never lies on the axes.

Examples
(1, 2)     => 1
(3, 5)     => 1
(-10, 100) => 2
(-1, -9)   => 3
(19, -56)  => 4

There are four quadrants:

1. First quadrant, the quadrant in the top-right, contains all points with positive X and Y
2. Second quadrant, the quadrant in the top-left, contains all points with negative X, but positive Y
3. Third quadrant, the quadrant in the bottom-left, contains all points with negative X and Y
4. Fourth quadrant, the quadrant in the bottom-right, contains all points with positive X, but negative Y
  
More on quadrants: [Quadrant (plane geometry) - Wikipedia](https://en.wikipedia.org/wiki/Quadrant_(plane_geometry))
```cpp
// -----  MY SOLUTION  ----- //
int quadrant(int x, int y) {
  if(x > 0 && y >=0){
    return 1;
  }
  else if(x < 0 && y >= 0){
    return 2;
  }
  else if(x <= 0 && y < 0){
    return 3;  
  }
  else{
    return 4;  
  }
}
// ----- BEST SOLUTION ----- //
int quadrant(int x, int y) {
  return x < 0 ? y < 0 ? 3 : 2 : y < 0 ? 4 : 1;
}
```

### Twice as old
Your function takes two arguments:

current father's age (years)
current age of his son (years)
Сalculate how many years ago the father was twice as old as his son (or in how many years he will be twice as old). The answer is always greater or equal to 0, no matter if it was in the past or it is in the future.
```cpp
// -----  MY SOLUTION  ----- //
int twice_as_old(int dad, int son) {
  for(int i {};; i++)
    if((dad + i) == ((son + i) * 2) || ((dad - i) == ((son - i) * 2) && son - i > 0))
      return i;
}
// ----- BEST SOLUTIONS ----- //
#include <stdlib.h>

int twice_as_old(int dad, int son) {
  return abs(dad-son*2);
}

#include <math.h>
int twice_as_old( int dad, int son ) {
	return fabs( dad - ( son * 2 ) );
}  
```
### Student's Final Grade
Create a function finalGrade, which calculates the final grade of a student depending on two parameters: a grade for the exam and a number of completed projects.

This function should take two arguments: exam - grade for exam (from 0 to 100); projects - number of completed projects (from 0 and above);

This function should return a number (final grade). There are four types of final grades:

100, if a grade for the exam is more than 90 or if a number of completed projects more than 10.
90, if a grade for the exam is more than 75 and if a number of completed projects is minimum 5.
75, if a grade for the exam is more than 50 and if a number of completed projects is minimum 2.
0, in other cases
Examples(Inputs-->Output):

100, 12 --> 100
99, 0 --> 100
10, 15 --> 100

85, 5 --> 90

55, 3 --> 75

55, 0 --> 0
20, 2 --> 0
```cpp
// -----  MY SOLUTION  ----- //
int final_grade(int exam, int projects){
  if(exam > 90 || projects > 10)
    return 100;
  else if(exam > 75 && projects >= 5){
    return 90;
  }
  else if(exam > 50 && projects >= 2){
    return 75;
  }
  else{
    return 0;
  }
}
// ----- BEST SOLUTION ----- //
int final_grade(int exam, int projects){
   return exam > 90 || projects > 10? 100: exam > 75 && projects >= 5? 90: exam > 50 && projects >= 2? 75: 0;
}
```
### Area or Perimeter
You are given the length and width of a 4-sided polygon. The polygon can either be a rectangle or a square.
If it is a square, return its area. If it is a rectangle, return its perimeter.

Example(Input1, Input2 --> Output):

6, 10 --> 32
3, 3 --> 9
Note: for the purposes of this kata you will assume that it is a square if its length and width are equal, otherwise it is a rectangle.
```cpp
// -----  MY SOLUTION  ----- //
int area_or_perimeter(int l , int w) {
  return l == w ? l * w : (l + w) * 2;
}
```
### The Feast of Many Beasts
All of the animals are having a feast! Each animal is bringing one dish. There is just one rule: the dish must start and end with the same letters as the animal's name. For example, the great blue heron is bringing garlic naan and the chickadee is bringing chocolate cake.

Write a function feast that takes the animal's name and dish as arguments and returns true or false to indicate whether the beast is allowed to bring the dish to the feast.

Assume that beast and dish are always lowercase strings, and that each has at least two letters. beast and dish may contain hyphens and spaces, but these will not appear at the beginning or end of the string. They will not contain numerals.
```cpp
// -----  MY SOLUTION  ----- //
#include <string>

bool feast(std::string beast, std::string dish){
  return (beast[0] == dish[0] && beast[beast.length() - 1] == dish[dish.length() - 1]) ? true : false;
}
// ----- BEST SOLUTION ----- //
#include <string>

bool feast(std::string beast, std::string dish){
  return beast.front()==dish.front() && beast.back()==dish.back();
}
```
### Century From Year

Introduction
The first century spans from the year 1 up to and including the year 100, the second century - from the year 101 up to and including the year 200, etc.

Task
Given a year, return the century it is in.

Examples
1705 --> 18
1900 --> 19
1601 --> 17
2000 --> 20
```cpp
// -----  MY SOLUTION  ----- //
int centuryFromYear(int year) 
{
  return year % 100 > 0 ? year / 100 + 1 : year / 100;
}
// ----- BEST SOLUTION ----- //
constexpr int centuryFromYear(int year) 
{
    return (year + 99) / 100;
}
```
### The falling speed of petals
When it's spring Japanese cherries blossom, it's called "sakura" and it's admired a lot. The petals start to fall in late April.

Suppose that the falling speed of a petal is 5 centimeters per second (5 cm/s), and it takes 80 seconds for the petal to reach the ground from a certain branch.

Write a function that receives the speed (in cm/s) of a petal as input, and returns the time it takes for that petal to reach the ground from the same branch.

Notes:

The movement of the petal is quite complicated, so in this case we can see the velocity as a constant during its falling.
Pay attention to the data types.
If the initial velocity is non-positive, the return value should be 0
```cpp
// -----  MY SOLUTION  ----- //
double SakuraFall(double v) {
  return v > 0 ? 400 / v : 0;
}
```
### Is he gonna survive?
A hero is on his way to the castle to complete his mission. However, he's been told that the castle is surrounded with a couple of powerful dragons! each dragon takes 2 bullets to be defeated, our hero has no idea how many bullets he should carry.. Assuming he's gonna grab a specific given number of bullets and move forward to fight another specific given number of dragons, will he survive?

Return true if yes, false otherwise :)
```cpp
// -----  MY SOLUTION  ----- //
bool hero(int bullets, int dragons) {
  return bullets / 2 >= dragons ? true : false;
}
// ----- BEST SOLUTION ----- //

```
### Pythagorean Triple
Given an unsorted array of 3 positive integers [ n1, n2, n3 ], determine if it is possible to form a Pythagorean Triple using those 3 integers.

A Pythagorean Triple consists of arranging 3 integers, such that:

a2 + b2 = c2

Examples
[5, 3, 4] : it is possible to form a Pythagorean Triple using these 3 integers: 32 + 42 = 52

[3, 4, 5] : it is possible to form a Pythagorean Triple using these 3 integers: 32 + 42 = 52

[13, 12, 5] : it is possible to form a Pythagorean Triple using these 3 integers: 52 + 122 = 132

[100, 3, 999] : it is NOT possible to form a Pythagorean Triple using these 3 integers - no matter how you arrange them, you will never find a way to satisfy the equation a2 + b2 = c2

Return Values
For Python: return True or False
For JavaScript: return true or false
Other languages: return 1 or 0 or refer to Sample Tests.
```cpp
// -----  MY SOLUTION  ----- //
bool PythagoreanTriple(const int a, const int b, const int c)
{
  if(a >= b){
    return a >= c ? (a*a == b*b + c*c) : (c*c == b*b + a*a);
  }
  else{
    return b >= c ? (b*b == a*a + c*c) : (c*c == b*b + a*a);
  }
}
// ----- BEST SOLUTION ----- //
bool PythagoreanTriple(int a, int b, int c) {
  return a * a + b * b == c * c || b * b + c * c == a * a || c * c + a * a == b * b;
}
```
### Count Odd Numbers below n
Given a number n, return the number of positive odd numbers below n, EASY!

Examples (Input -> Output)
7  -> 3 (because odd numbers below 7 are [1, 3, 5])
15 -> 7 (because odd numbers below 15 are [1, 3, 5, 7, 9, 11, 13])
Expect large Inputs!
```cpp
// -----  MY SOLUTION  ----- //
int odd_count(int n){
  return n / 2;
}
```

### Thinkful - Logic Drills: Traffic light

You're writing code to control your town's traffic lights. You need a function to handle each change from green, to yellow, to red, and then to green again.

Complete the function that takes a string as an argument representing the current state of the light and returns a string representing the state the light should change to.

For example, when the input is green, output should be yellow.
```cpp
// -----  MY SOLUTION  ----- //

#include <string>

std::string update_light(std::string current) {
  return current == "green" ? "yellow" : (current == "yellow" ? "red" : "green");
}
// ----- BEST SOLUTION ----- //
#include <string>
#include <map>
std::string update_light(std::string current) {
  std::map<std::string, std::string> mp {{"green", "yellow"}, {"yellow", "red"}, {"red", "green"}};
  return mp[current];
}
```

### Solutions Template

```cpp
// -----  MY SOLUTION  ----- //

// ----- BEST SOLUTION ----- //

```




## 7 kyu

### Compare 2 digit numbers
You are given 2 two-digit numbers. You should check if they are similar by comparing their numbers, and return the result in %.

Example:

compare(13,14)=50%;
compare(23,22)=50%;
compare(15,51)=100%;
compare(12,34)=0%.

```cpp
// -----  MY SOLUTION  ----- //
std::string compare(unsigned short a, unsigned short b){
  short temp {};
  
  if(a / 10 == b / 10 || a / 10 == b % 10)
    temp++;
  if(a % 10 == b / 10 || a % 10 == b % 10)
    temp++;
  if(a % 10 == a / 10 && temp > 1 && b % 10 != b / 10 )
    return "50%";
    
  return (temp == 0) ? "0%": ((temp == 1) ? "50%" : "100%" );
}
// ----- BEST SOLUTION ----- //
std::string compare(unsigned short a, unsigned short b){
  int d = std::max((a % 10 == b % 10) + (a / 10 == b / 10), (a % 10 == b / 10) + (a / 10 == b % 10));
  return std::to_string(50*d) + "%";
}
```

### Sum of a sequence
Your task is to write a function which returns the sum of a sequence of integers.

The sequence is defined by 3 non-negative values: begin, end, step.

If begin value is greater than the end, your function should return 0. If end is not the result of an integer number of steps, then don't add it to the sum. See the 4th example below.

Examples

2,2,2 --> 2
2,6,2 --> 12 (2 + 4 + 6)
1,5,1 --> 15 (1 + 2 + 3 + 4 + 5)
1,5,3  --> 5 (1 + 4)
This is the first kata in the series:

Sum of a sequence (this kata)
Sum of a Sequence [Hard-Core Version]
```cpp
// -----  MY SOLUTION  ----- //
int sequenceSum(int start, int end, int step)
{
  long lVal {}, i{};
  
  if(start > end)
    return 0;
 
  for(; start + step * i <= end; i++){
    lVal += start + step * i;     
  }

  return lVal;
}
// ----- BEST SOLUTION ----- //
int sequenceSum(int start, int end, int step)
{
    int sum = 0;
    for(int tmp=start;tmp<=end; tmp+=step)
    {
        sum += tmp;
    }
    return sum;
}
```

## 6 kyu

## 5 kyu

## 4 kyu
## 3 kyu
## 2 kyu
## 1 kyu
