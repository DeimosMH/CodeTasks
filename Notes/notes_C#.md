# `C#` Notes

## Foundational C# with Microsoft

### Basics

```c#
Console.WriteLine("Your message here"); // Console.WriteLine appends a new line after the output.
Console.Write("No!");                   // You can create a literal string in C# using double quotation marks.
string message = $"{greeting} {firstName}!"; // string interpolation
string message = $"Hello {firstName}!";
Console.WriteLine($@"C:\Output\{projectName}\Data"); // verbatim literals and string interpolation
Console.WriteLine(firstName + " sold " + (widgetsSold + 7) + " widgets.");
decimal decimalQuotient = 7.0m / 5.0m;
decimal quotient = (decimal)first / (decimal)second;
int value1 = 3 + 4 * 5;
int value2 = (3 + 4) * 5;
```

`Parentheses` are known as the method `invocation operator`.
`Semicolon` is the end of `statement operator`.


Use character escape sequences when you need to insert a special character into a literal string, like a tab \t, new line \n, or a double quotation mark \".
Use an escape character for the backslash \\ when you need to use a backslash in all other scenarios.
Use the @ directive to create a verbatim string literal that keeps all whitespace formatting and backslash characters in a string.
Use the \u plus a four-character code to represent Unicode characters (UTF-16) in a string.
Unicode characters may not print correctly depending on the application.

String concatenation allows you to combine smaller literal and variable strings into a single string.
Avoid creating intermediate variables if adding them doesn't increase readability.

String interpolation provides an improvement over string concatenation by reducing the number of characters required in some situations.
You can combine string interpolation and verbatim literals by combining the symbols for each and using that as a prefix for the string template.

- `()` - method invocation operator required to execute a method
- `.` - member access operator.
- What is an object?  - It's instance of a class.

Use the foreach statement to iterate through each element in an array, executing the associated code block once for each element in the array.
`foreach (int value in values)`

conditional operator `?:`

The `Remove()` method works like the `Substring()` method, except that it deletes the specified characters in the string.
The `Replace()` method swaps all instances of a string with a new string.

Given the method signature, `void Print(string name, string number = "", bool member = false)`, correctly uses named and optional arguments: `Print("Tony", member: true);`

Given the following method signature, `void SetHealth(string health)`, why don't operations inside the method affect the original input string health?
Strings can't be altered once assigned, they can only be overwritten with a new value.

What is the purpose of defining an optional parameter in a method? To simplify the required parameters when a parameter isn't significant to the result.

testing could be divided into the following subcategories:
- Functional testing: - Unit testing - Integration testing - System testing - Acceptance testing
- Nonfunctional testing: - Security testing - Performance testing - Usability testing - Compatibility testing

What is code debugging? A process to isolate and fix issues in code logic.

"In C#, errors in the program at runtime are propagated through the program by using a mechanism called exceptions. Exceptions are thrown by code that encounters an error and caught by code that can correct the error. Exceptions can be thrown by the .NET runtime or by code in a program. Exceptions are represented by classes derived from Exception. Each class identifies the type of exception and contains properties that have details about the exception."

The type of exception determines the information it contains.

```c#
Array.Resize(ref pallets, 6);
Array.Clear(pallets, 0, 2);

string value = "abc123";
char[] valueArray = value.ToCharArray();
Array.Reverse(valueArray);
string result = String.Join(",", valueArray); // 3,2,1,c,b,a
string[] items = result.Split(',');

decimal measurement = 123456.78912m;
Console.WriteLine($"Measurement: {measurement:N4} units"); // Measurement: 123,456.7891 units // formatted as number
Console.WriteLine($"Sub Total: {subtotal:C}"); // Sub Total: $2,750.00 // formatted as currency
Console.WriteLine($"Tax: {taxPercentage:P2}"); // Format as percentage

string paymentId = "769C";
string payeeName = "Mr. Stephen Ortega";
string paymentAmount = "$5,000.00";

var formattedLine = paymentId.PadRight(6);
formattedLine += payeeName.PadRight(24);
formattedLine += paymentAmount.PadLeft(10);

Console.WriteLine("1234567890123456789012345678901234567890");
Console.WriteLine(formattedLine); //  769C  Mr. Stephen Ortega       $5,000.00

Console.WriteLine("C110".PadLeft(6, '0')); // 00C110
Console.WriteLine($"Dear {customerName},"); // $ - string interpolation operator

int openingPosition = message.IndexOf('(');
int closingPosition = message.IndexOf(')');
openingPosition += 1;
int length = closingPosition - openingPosition;

int openingPosition = message.LastIndexOf('(');

char[] openSymbols = { '[', '{', '(' };
int openingPosition = message.IndexOfAny(openSymbols);

string updatedData = data.Remove(5, 20);

message = message.Replace("--", " ");

decimal.TryParse(numberString, out myConvert) // To safely test a cast operation

// 2D array method
string[,] AssignGroup(int groups = 6) 
{
    string[,] result = new string[groups, pettingZoo.Length/groups];

    for (int i = 0; i < groups; i++) 
    {
        for (int j = 0; j < result.GetLength(1); j++) 
        {

        }
    }

    return result;
}

try
{   
   // try code block - code that may generate an exception
}
catch
{   
   // catch code block - code to handle an exception
   /*The catch code block contains the code that's executed when an exception is caught. The catch block can handle the exception, log it, or ignore it. A catch block can be configured to execute when any exception type occurs, or only when a specific type of exception occurs.*/
}
finally
{   
   // finally code block - code to clean up resources
   /*The finally code block contains code that executes whether an exception occurs or not. The finally block is often used to clean up any resources that are allocated in a try block. For example, ensuring that a variable has the correct or required value assigned to it.*/
}

...
catch (NullReferenceException ex)
{
    Console.WriteLine("Error: The reference is null." + ex.Message);
}
catch (IndexOutOfRangeException ex)
{
    Console.WriteLine("Error: Index out of range." + ex.Message);
}
...

// Configure and throw customized exceptions 
//  Message property of an exception is readonly // StackTrace property is often used to track the origin of the exception
catch (FormatException)
{
    FormatException invalidFormatException = new FormatException("FormatException: User input values in 'BusinessProcess1' must be valid integers");
    throw invalidFormatException;
}

//  throw can be used re-throw an exception from inside a catch code block
    throw;
// When you re-throw an exception, the original exception object is used, so you don't lose any information about the exception. 

```

### Compiler-generated exceptions

`ArrayTypeMismatchException`: Thrown when an array can't store a given element because the actual type of the element is incompatible with the actual type of the array.
`DivideByZeroException`: Thrown when an attempt is made to divide an integral value by zero.
`FormatException`: Thrown when the format of an argument is invalid.
`IndexOutOfRangeException`: Thrown when an attempt is made to index an array when the index is less than zero or outside the bounds of the array.
`InvalidCastException`: Thrown when an explicit conversion from a base type to an interface or to a derived type fails at runtime.
`NullReferenceException`: Thrown when an attempt is made to reference an object whose value is null.
`OverflowException`: Thrown when an arithmetic operation in a checked context overflows.


### VSCode + C#

Requirements:

- `.NET SDK` - installed (check via cmd `dotnet --version`)
- VSCode + `C# Dev Kit` official Microsoft VSCode addon

Create new console application in specific folder location (CLI command):
`dotnet new console -o ./CsharpProjects/TestProject`

Build aplication:
`dotnet build`

Run application:
`dotnet run`

### Variable name conventions

Conventions are suggestions that are agreed upon by the software development community. While you're free to decide not to follow these conventions, they're so popular that it might make it difficult for other developers to understand your code. You should practice adopting these conventions and make them part of your own coding habits.

- Variable names should use camel case, which is a style of writing that uses a lower-case letter at the beginning of the first word and an upper-case letter at the beginning of each subsequent word. For example: `string thisIsCamelCase;`.
- Variable names should be descriptive and meaningful in your application. You should choose a name for your variable that represents the kind of data it will hold (not the data type). For example: `bool orderComplete;`, NOT `bool isComplete;`.
- Variable names should be one or more entire words appended together. Don't use contractions because the name of the variable may be unclear to others who are reading your code. For example: `decimal orderAmount;`, NOT `decimal odrAmt;`.
- Variable names shouldn't include the data type of the variable. You might see some advice to use a style like `string strMyValue;`. It was a popular style years ago. However, most developers don't follow this advice anymore and there are good reasons not to use it.

The example `string firstName;` follows all of these rules and conventions, assuming I want to use this variable to store data that represents someone's first name.
