# Oth Notes

[toc]

## MegaSync

`Excludied` files & format names to synchronize:
(PATH: Settings -> Folders -> Excluded File ...)

```sh
*.sb-????????-??????
*.tmp
desktop.ini
Thumbs.db
~*
```

## GIT

Merge all commits into one:

1. Run command

    ```sh
    git rebase --root -i 
    ```

2. Then `squash` all without first one

## mkDocs

[Docs](https://squidfunk.github.io/mkdocs-material/)

Install

```sh
pip install mkdocs-material
pip install mkdocs-include-markdown-plugin
pip install mkdocs-codeinclude-plugin
pip install mkdocs-glightbox
```

Create new base for documentation in current PATH

```sh
mkdocs new .
```

Run local web server for documentation

```sh
mkdocs serve
```

Compile solution

```sh
mkdocs build
```

## Python

Update specific `pip` package

```sh
pip install --upgrade <pcg name>
```

Auto-updater in `pip`

```sh
pip install pip-review
pip-review --local --auto
```

## DNS

[Cloudflare](https://blog.cloudflare.com/introducing-1-1-1-1-for-families/)

- Cloudflare with malware filter: 1.1.1.2, 1.0.0.2
- Cloudflare with malware and adult content filter: 1.1.1.3,  1.0.0.3

## PI-HOLE (MIM ad block)

1. Install and go through config

    ```sh
    curl -sSL https://install.pi-hole.net | bash
    ```

2. Remember password at the end!
3. Then follow official [instructions](https://discourse.pi-hole.net/t/how-do-i-configure-my-devices-to-use-pi-hole-as-their-dns-server/245)

- Router config DHCP example: (gateway - IP_router, DNS - IP_PI_HOLE):

<img src="assets\notes_oth_RouterDHCPconfig.png" alt="Image description"
style="display: block; margin: auto; width: 60%; height: auto; border-radius: 8px;">

## SAMBASHARE (SAFE) - port 445

1. Mount devices

    ```sh
    lsblk

    sudo mkdir /mnt/usb1
    sudo mkdir /mnt/usb2

    sudo mount /dev/sda1 /mnt/usb1
    sudo mount /dev/sdb2 /mnt/usb2
    ```

2. Install

    ```sh
    sudo apt-get update
    sudo apt-get upgrade
    sudo apt-get install samba samba-common-bin
    mkdir /home/pi/shared
    sudo nano /etc/samba/smb.conf
    ```

3. Configure (add under the `[global]` section)

    ```sh
    encrypt passwords = yes
    ```

4. Configure (add to the bottom)

    ```sh
    [AudioVideo]
    path = /mnt/usb1
    writeable=Yes
    create mask=0777
    directory mask=0777
    public=no

    [Gry]
    path = /mnt/usb2
    writeable=Yes
    create mask=0777
    directory mask=0777
    public=no
    ```

5. Set password for remote connection

    ```sh
    sudo smbpasswd -a pi
    sudo systemctl restart smbd
    ```

6. Check host IP, than assigh static one in Router

    ```sh
    hostname -I
    ```

7. Make it safe - add IP BAN (if Routing)

    7.1 Install

      ```sh
      sudo apt-get install fail2ban
      ```

    7.2 Create `jail` for Samba

      ```sh
      sudo nano /etc/fail2ban/jail.d/samba.conf
      ```

    7.3 Configure (write to created file)
      - maxretry is max login attempts
      - bantime = -1 - is indefinite time for attempt to login (default = 10 min)

      ```sh
      [samba]
      enabled = true
      port = 139,445
      filter = samba
      logpath = /var/log/samba/log.%m
      maxretry = 3
      bantime = -1
      ```

    7.4 Restart service

      ```sh
      sudo systemctl restart fail2ban
      ```

---

### Auto-device mount

```sh
/dev/<device_name> <mount_point> <filesystem_type> defaults 0 0

sudo sh -c "echo '/dev/sda1 /mnt/usb1 ntfs defaults 0 0' >> /etc/fstab"
sudo sh -c "echo '/dev/sdb2 /mnt/usb2 ntfs defaults 0 0' >> /etc/fstab"
```

## DISKPART

- list disk
- select disk 0
- clean
- create part pri
- active
- format fs=fat32 quick

## QEMU

### Windows

1. [Install](https://www.qemu.org/download/)
2. Create Environmental Variable with installation Path (short run: systempropertiesadvanced)
3. Use, eg:

    ```sh
    qemu-img create -f qcow2 GarudaDragonized.img 50G

    qemu-system-x86_64 -enable-kvm -cdrom garuda-dr460nized-gaming-linux-zen-220808.iso -boot menu=on -drive file=GarudaDragonized.img -m 4g
    ```

    If error about kvm appear: uninstall Hyper-V, install:
    [HAXM](https://github.com/intel/haxm/releases), and use command with: `hda` `full iso path` `-accel` `hax`

    ```sh
    qemu-system-x86_64 -hda C:\Users\Deimos\VM\Garuda\garuda-dr460nized-gaming-linux-zen-220808.iso -accel hax -boot menu=on -drive file=GarudaDragonized.img -m 4g -smp 8,sockets=2,cores=2,threads=2,maxcpus=8
    ```

    ```sh
    qemu-system-x86_64 C:\Users\Deimos\VM\Garuda\garuda-dr460nized-gaming-linux-zen-220808.iso,format=raw,index=0,media=disk -boot menu=on -drive file=GarudaDragonized.img,format=raw,index=0,media=disk -m 4g -smp 8,sockets=2,cores=2,threads=2,maxcpus=8
    ```

    ```sh
    qemu-system_x86_64 -hda archlinux-2022.08.05-x86_64.iso -accel hax -boot menu=on -drive file=Arch.iso
    ```

## NVChad

Video tutorials:

- [https://www.youtube.com/watch?v=Mtgo-nP_r8Y](Turn VIM into a full featured IDE with only one command)

### Installation - Linux (Ubuntu)

1. Install fonts

    ```sh
    mkdir -p ~/.local/share/fonts
    cd ~/.local/share/fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/DroidSansMNerdFont-Regular.otf
    ```

2. Install `nvim` > 9.0

    ```sh
    sudo snap install nvim --classic
    ```

3. Install `nvchad`

    ```sh
    git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 
    ```

4. Run `nvim` and wait for packages to install. For configuration query set `no`.

### Installation - Windows

NVChad

### Cheat sheet

`Space` + `c` + `h`
`Space` - hold for available commands

### Theming

`Space` + `t` + `h`

### Syntax highlighting

Installation fo language

```sh
:TSInstall <language name>
```

### File tree (nvim tree)

`Ctrl` + `n`

`m` - marks file
`a` - create new file
`c` - copy
`p` - paste
`r` - rename

### File navigation

`Space` + `f` + `f` - search all files
`Space` + `f` + `b` - search open file

### Window navigation

`Ctrl` + `w`,
 `ctrl` + `j`
 `ctrl` + `i`
 `ctrl` + `k`
 `ctrl` + `l`

`:vsp` - vertical split
`:sp` - split

### Buffer tab

`tab`
`shift + tab`

### Terminal

`Space` + `h` - open horizontal window
`Space` + `v` - open vertical window
`Ctrl` + `\`, `Ctrl` + `n` - go to normal mode in terminal

### Customization

In path: `~/.config/nvim/lua/custom`
`chadrc.lua` - override default config of nvchad
`init.lua` - override default config of nvim configuration

## OTH

### merge all md files

01_preface.md
02_introduction.md
03_why_markdown_is_useful.md
04_limitations_of_markdown.md
05_conclusions.md

You can merge them by doing executing this command within the same directory:

pandoc *.md > markdown_book.html

### Projects

#### I am deploying site using github pages and mkdocs
How to hide side behind simple pin/passwordlayer:

GitHub Pages and MkDocs are designed to host static websites, and they do not inherently support password protection or pin-based access control.

However, you can add a layer of password protection using third-party tools. One such tool is Cloudflare, which offers a feature named 'Access' that can be used to add a layer of authentication to your site.

Here is a general outline of the steps you would need to follow:

Sign up for a Cloudflare account and set up your domain with Cloudflare.
Navigate to the Access app in the Cloudflare dashboard.
Click on 'Create Access Policy'.
In the 'Application Domain' field, enter the domain of your GitHub Pages site.
Specify the 'Policy Name' and under 'Decisions', choose 'Allow'.
Under 'Include', select 'Everyone' to apply this policy to all visitors.
Click 'Save and Deploy'.
Now, anyone who visits your site will be prompted to log in. You can manage users and their access levels directly from the Cloudflare dashboard.

Please note that Cloudflare Access is a paid feature. The cost starts at $3 per user per month, but the first five users are free. This could be a feasible solution if you only need a small number of users to access your site.

This solution has some limitations. The most significant is that it's not technically password-protecting your website; instead, it's adding a layer of authentication in front of it. This means that if someone has the direct URL to a specific file on your site, they might be able to bypass the Cloudflare Access protections.

For more advanced needs or larger user bases, you may want to consider using a more robust static site host that supports password protection, or switch to a dynamic site host that supports server-side scripting.

Unfortunately, without server-side scripting or a third-party service, it's not possible to add a password or pin layer directly to a GitHub Pages site 1.

#### We have automatic, static and dynamic variables. Which ones are on stack and which on heap in C++? If I didn't write other types of variables or memory type - add them and explain.

In C++, variables can be stored in three main types of memory: stack, heap, and static. The type of memory used depends on how variables are declared and allocated in the program.

Stack Memory:

Variables that are declared inside a function or a block are stored on the stack. These variables are called automatic variables. They are automatically created and destroyed when the function or block in which they are declared is entered and exited, respectively. In other words, these variables have a local scope and their lifetime is the duration of the function call.

```cpp
void someFunction() {
    int a; // this variable is stored on the stack
}
2, 10
```

Heap Memory:

Heap memory, also referred to as dynamic memory, is used for dynamic memory allocation. When variables are created at runtime using new keyword, they are stored in heap memory. These variables remain in existence until they are explicitly destroyed using delete keyword or the program ends. This means that these variables have a global scope and their lifetime is as long as they are not destroyed.

```
int* p = new int; // this variable is stored in heap memory
// do something with p
delete p; // destroy the variable
1, 4
```

Static Memory:

Static memory is used for static and global variables. Static variables are those that are declared with the static keyword. They are created at the start of the program and destroyed when the program ends. Global variables, which are declared outside all functions, also reside in static memory. Both static and global variables have a global scope and their lifetime is the duration of the program.

```cpp
static int s; // this variable is stored in static memory
int g; // this variable is also stored in static memory
1, 2
```

Other Types of Memory:

In addition to stack, heap, and static memory, there is also thread-local and free-store memory.

Thread-local storage is used for variables that are declared with the thread_local keyword. These variables are local to a thread and each thread has its own copy of these variables.

Free-store memory is another term for dynamic memory. It is a pool of memory that can be used for dynamic allocation.

In conclusion, automatic variables are stored on the stack, dynamically allocated variables are stored on the heap, and static and global variables are stored in static memory. The type of memory used depends on the scope and lifetime requirements of the variables.


#### Design patterns in C++ - when, how and why use:
- Factory
- builder
- decorator

Design patterns are typical solutions to common problems in software design. They are like pre-made blueprints that you can customize to solve a design problem in your code. Let's discuss when, how, and why to use Factory, Builder, and Decorator design patterns in C++.

Factory Pattern: The Factory Method Pattern provides an interface for creating objects but leaves the actual object instantiation to derived classes. This allows for flexibility in object creation and promotes loose coupling between the creator (client code) and the concrete products 2. The Factory pattern should be used when a class cannot anticipate the type of objects it needs to create, and when a class wants its subclasses to specify the objects it creates 7.
Here is an example of Factory Pattern in C++:

```cpp
   class Shape {
   public:
      virtual void draw() = 0;
   };

   class Circle : public Shape {
   public:
      void draw() {
         cout << "Inside Circle::draw() method." << endl;
      }
   };

   class ShapeFactory {
   public:
      Shape* getShape(string shapeType){
         if(shapeType == "CIRCLE"){
            return new Circle();
         }
         return NULL;
      }
   };
```

Builder Pattern: The Builder Pattern is a creational design pattern that provides an interface for constructing an object and then have concrete builder classes that implement this interface to create specific objects 10. Use this pattern when you want to build complex objects step by step, or when you want to produce different types and representations of an object using the same construction code.
Here is an example of Builder Pattern in C++:

```cpp
   class Builder {
   public:
      virtual void buildPartA() = 0;
      virtual void buildPartB() = 0;
   };

   class ConcreteBuilder : public Builder {
   public:
      void buildPartA() {
         cout << "Build PartA." << endl;
      }
      void buildPartB() {
         cout << "Build PartB." << endl;
      }
   };

   class Director {
   public:
      void construct(Builder* builder) {
         builder->buildPartA();
         builder->buildPartB();
      }
   };
```

Decorator Pattern: The Decorator Pattern is a structural design pattern that allows behavior to be added to an individual object, either statically or dynamically, without affecting the behavior of other objects from the same class 10. This pattern is useful when you want to add responsibilities to objects without subclassing.
Here is an example of Decorator Pattern in C++:

```cpp
   class Component {
   public:
      virtual void operation() = 0;
   };

   class ConcreteComponent : public Component {
   public:
      void operation() {
         cout << "ConcreteComponent operation." << endl;
      }
   };

   class Decorator : public Component {
   protected:
      Component* component;
   public:
      Decorator(Component* c) : component(c) {}
      void operation() {
         if (component != NULL)
            component->operation();
      }
   };

   class ConcreteDecorator : public Decorator {
   public:
      ConcreteDecorator(Component* c) : Decorator(c) {}
      void operation() {
         Decorator::operation();
         cout << "ConcreteDecorator operation." << endl;
      }
   };
```

In conclusion, these design patterns offer solutions to specific problems by defining a system of communication between objects in a flexible and reusable way. Understanding these patterns and knowing when to apply them can greatly improve your ability to design and implement complex systems.

#### Architectural patterns in C# - when, how and why use them?

Architectural patterns, often compared to blueprints, are fundamental structural organizations for software systems. They provide solutions for high-level problems in software architecture, dealing with the organization of code. Architectural patterns are a critical aspect of writing good code and are a tool for encapsulating and formatting code to be more understandable, flexible, and maintainable 4.

When to use Architectural Patterns:

When you want to understand and communicate your system structure more efficiently.
When you want to ensure that your system can be easily maintained and extended over time.
When you need to address specific architectural concerns such as performance, scalability, security, and deployment.
When you need to make high-level design decisions about the overall system structure 4, 8.
How to use Architectural Patterns:

Identify the architectural concerns that need to be addressed in your system.
Choose the architectural pattern that best addresses those concerns.
Implement the pattern by using its key components and rules to structure your system 4, 8.
Why use Architectural Patterns:

They provide a proven solution to architectural problems.
They help in managing the complexity of large software systems.
They promote reusability and maintainability of the code.
They provide a common vocabulary for developers 4, 8.
Examples of Architectural Patterns in C#:

MVC (Model-View-Controller): This pattern separates an application into three main components: the Model, the View, and the Controller. The Model represents the data and the business logic, the View is the user interface, and the Controller handles the communication between the Model and the View. MVC is widely used in web application development 10.

```c#
public class CarController : Controller
{
    private CarRepository carRepository;
    
    public CarController()
    {
        this.carRepository = new CarRepository();
    }
    
    public ActionResult Index()
    {
        return View(this.carRepository.GetCars());
    }
}

```

Pipes and Filters: This pattern provides a structure for systems that process a stream of data. Each processing step is encapsulated in a filter component. Data is passed through pipes between adjacent filters. Continually using this pattern can help you develop systems that are easy to understand, can be changed easily, and can be maintained and moved around the system 7.

```c#
public class LowerCaseFilter : IFilter
{
    public string Process(string input)
    {
        return input.ToLower();
    }
}

```

Facade: This pattern provides a simplified interface to a complex subsystem. It makes a subsystem easier to use because it hides the complexity of the subsystem and exposes a simplified interface to the client 9.

```c#
public class Facade
{
    protected Subsystem1 _subsystem1;
    protected Subsystem2 _subsystem2;

    public Facade(Subsystem1 subsystem1, Subsystem2 subsystem2)
    {
        this._subsystem1 = subsystem1;
        this._subsystem2 = subsystem2;
    }

    public string Operation()
    {
        string result = "Facade initializes subsystems:\n";
        result += this._subsystem1.operation1();
        result += this._subsystem2.operation1();
        result += "Facade calls subsystems to execute the action:\n";
        result += this._subsystem1.operationN();
        result += this._subsystem2.operationZ();
        return result;
    }
}

```

In conclusion, architectural patterns in C# provide a way to solve common architectural problems, allow for better communication between developers, help manage system complexity, and promote code maintainability and reusability.

#### Exmplain MVVM

The Model-View-ViewModel (MVVM) is an architectural pattern used in software development that separates the development of the graphical user interface (GUI) from the development of the business logic or back-end logic. This separation allows the view to be independent of any specific model platform 4.

In the MVVM pattern, there are three core components: the Model, the View, and the ViewModel. Each component serves a distinct purpose and interacts with the others in a specific way:

Model: Represents the data and the business logic of the application. It encapsulates the application's data and business logic 6.
View: Represents the user interface of the application. It is responsible for detecting user input and forwarding it to the ViewModel 6.
ViewModel: Acts as an intermediary between the Model and the View. It exposes the data objects from the Model in such a way that they can be easily managed and presented. It also handles most of the view's display logic 4.
The View "knows about" the ViewModel, and the ViewModel "knows about" the Model, but the Model is unaware of the ViewModel, and the ViewModel is unaware of the View. This isolation allows the Model to evolve independently of the View 1.

The ViewModel acts as an adapter for the Model classes, preventing major changes to the Model code. Developers can create unit tests for the ViewModel and the Model without using the View 1.

The key to using MVVM effectively lies in understanding how to factor app code into the correct classes and how the classes interact. This separation of concerns allows developers and designers to work independently and concurrently on their components during development 1.

Here is a simple example of how MVVM works in a C# application:

```c#
public class ViewModel
{
   private Model _model;

   public ViewModel()
   {
       this._model = new Model();
   }

   public string Data
   {
       get { return this._model.Data; }
   }
}

public class View
{
   private ViewModel _viewModel;

   public View()
   {
       this._viewModel = new ViewModel();
       this.Data = this._viewModel.Data;
   }

   public string Data { get; set; }
}

```

In this example, the ViewModel exposes the data from the Model in a way that the View can easily consume. The View then binds to this data and presents it to the user. This is a simple demonstration of how the MVVM pattern works in a C# application.

#### Give me examples of unit tests in C++ and C# with explanation.

##### C# Unit Testing Example
In C#, we usually use frameworks such as MSTest, NUnit, or xUnit to write unit tests. Let's use the MSTest framework for our example. Assume we have a BankAccount class with a Debit method that we want to test 2.

Here is an example of how to write a unit test for the Debit method:

```c#
[TestClass]
public class BankAccountTests
{
    [TestMethod]
    public void Debit_WithValidAmount_UpdatesBalance()
    {
        // Arrange
        double currentBalance = 10.0;
        double debitAmount = 1.0;
        double expected = 9.0;
        var account = new BankAccount("Mr. Bryan Walton", currentBalance);
        
        // Act
        account.Debit(debitAmount);
        
        // Assert
        double actual = account.Balance;
        Assert.AreEqual(expected, actual, "Account not debited correctly");
    }
}

```

This test follows the Arrange-Act-Assert (AAA) pattern 8:

Arrange: Set up the object to be tested and the input.
Act: Invoke the method on the object.
Assert: Verify that the action of the method performed as expected.

##### C++ Unit Testing Example
In C++, we can use a variety of testing frameworks such as Google Test, Catch2, or Boost.Test. Let's use Google Test for our example. Assume we have a Calculator class with an Add method that we want to test 3.

Here's an example of how to write a unit test for the Add method:

```cpp
#include "pch.h"
#include "gtest/gtest.h"
#include "Calculator.h"

TEST(CalculatorTests, Add_WithValidNumbers_ReturnsCorrectSum)
{
    // Arrange
    Calculator calc;
    int num1 = 5;
    int num2 = 3;
    int expected = 8;
    
    // Act
    int actual = calc.Add(num1, num2);
    
    // Assert
    EXPECT_EQ(expected, actual);
}

```

This test also follows the Arrange-Act-Assert (AAA) pattern:

Arrange: Set up the object to be tested and the input.
Act: Invoke the method on the object.
Assert: Verify that the action of the method performed as expected.
In both examples, the tests are self-contained, meaning they don't depend on the state from other tests or external factors. This is a good practice because it ensures that tests can be run in any order and won't fail due to side effects from other tests.