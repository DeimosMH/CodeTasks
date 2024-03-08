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
```

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
