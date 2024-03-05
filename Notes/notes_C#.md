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

