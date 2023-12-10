# Daily Coding Habit

----

## Notes

- [Training: CodeWars](/Training/CodeWars/README.md)
<br>

- [Notes: Other - Good to know-how small projects](/Notes/notes_oth.md)
- [Notes: Subrepo: DCH C++ Primer Plus](https://github.com/DeimosMH/DCH_CppPrimerPlus)
- [Notes: GH-Page: DCH C++ Primer Plus](https://deimosmh.github.io/DCH_CppPrimerPlus/)

----

## Developement suite

### Used editors/IDE's

- [MS Visual Studio Code Insiders](https://code.visualstudio.com/)
  - Markdown:
    - Markdown Preview Enhanced
    - Excel to Markdown table
    - Markdown Checkboxes
    - Markdown Paste
    - Markdown PDF
    - Markdown Table Prettifier
    - Markdown+Math
    - Path Autocomplete
    - Markdownlint
  - AWS Toolkit (CodeWhisperer)
  - Office Viewer (Markdown Editor)
  - Git Lens Supercharged

- [MS Visual Studio](https://visualstudio.microsoft.com/)
- [VIM](https://www.vim.org/download.php)
- [Unity](https://unity.com/)
- [Unreal Engine 5](https://www.unrealengine.com/en-US)

### Documentation

- [mkDocs](https://www.mkdocs.org/user-guide/installation/)

### Habits Maintenance

- [Habitica](https://habitica.com/)

### Used data-serialization languages

- YAML (HAOS)

### Used programming languages

- C/C++
- C#
- Shell / Powershell / Batch
- Python

----

## Training

### Sites

- [Codility](https://www.codility.com/)
- [HakerRank](https://www.hackerrank.com/)
- [CodeInGame](https://www.codingame.com/start)
- [Codewars](https://www.codewars.com/)
- [RootMe](https://www.root-me.org/?lang=en)

### Books

#### _C~C++_

- **"C++ Primer Plus", Sixth Edition, 2012, Stephan Prata**

#### _C#_

- **"Essential C# 8.0", Seventh Edition, 2021, Mark Michaelis**
- "C# Programming Cookbook", 2016, Dirk Strauss

#### _Bash & Security_

- **"Linux® Command Line and Shell Scripting Bible", Third Edition, 2015, John Wiley & Sons**
- "Hacklog Volume 1 Anonymity IT Security & Ethical Hacking Handbook", 2017, Stefano Novelli
- "Gray Hat Hacking The Ethical Hacker’s Handbook", 2018, McGraw-Hill
- "Beginning Ethical Hacking with Kali Linux Computational Techniques for Resolving Security Issues", 2018, Sanjib Sinha

#### _Unity_

- **"Unity In Action, Multiplatform game developement in C#", 2018, Joseph Hocking**
- "C# Game Programming Cookbook for Unity 3D", 2014,Jeff W. Murray

----

## Automated installation and configuration

Script `_helpers/install.bat`, will automatically download, install and configure:

C++ compiler for Windows/VS Code

- msys2
- Mingw-w64 toolchain

Exaple of use:

```sh
g++ ./01_myfirst.cpp && a.exe         
Come up and C++ me some time.
You wonΓÇÖt regret it!
```

----

## Other

### Solutions Template

```cpp
// -----  MY SOLUTION  ----- //

// ----- BEST SOLUTION ----- //

```

### Data fetch & display template (necessary security off)

```html
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
```

### Wrapping template

```html
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
</details> <br> 
```

### Back to top button template

```html
<button onclick="backToTop()">Go to top</button>
<script>
    function backToTop() {
        window.scrollTo({ top: 0, behavior: 'smooth' });
}
</script>
```

----

### Test of useful tools

- [Blackbox AI](https://www.useblackbox.io/chat) - tool designed for automating the coding process using artificial intelligence. It's often used when
you want to generate code snippets, automate repetitive tasks, or when you need help with debugging. It can be particularly helpful if you're working
on a large project and need to speed up the process Blackbox AI.
- [Sourcegraph](https://sourcegraph.com/get-cody) - developer platform that helps you understand your code. It provides features like code search,
code navigation, and code intelligence. It's particularly useful when you're dealing with large codebases and need to quickly understand and navigate
through the code. Sourcegraph also integrates with many popular code hosting platforms, making it a versatile tool for any developer.
- [Phind](https://www.phind.com) - help developers find and fix bugs in their code. It uses machine learning algorithms to analyze your code and
provide suggestions for potential fixes. Phind can also help you understand complex code by providing detailed explanations of what each part of your
code does
- [Perplexity](https://www.perplexity.ai/) - Phind alternative

When to use them:

- Use `Blackbox` AI when you want to automate parts of your coding process, especially for large projects.
- Use `Sourcegraph` when dealing with large codebases and you need to quickly understand and navigate through the code.
- Use `Phind` to find and fix bugs in the code.
