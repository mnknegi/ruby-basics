
## Table of Content
- Introduction(#introduction)
- Ruby Foundations(#ruby-foundations)

### Introduction

Ruby is a general-purpose, object-oriented, interpreted programming language designed by Yukihiro
“Matz” Matsumoto. Ruby was first announced in 1993. The first public release appeared in 1995, and
the language became very popular in Japan during the 1990s. 

### Ruby Foundations

#### Basic Operators in Ruby

|  operations   | examples  |
|---------------|-----------|
|Arithmetic     |+, -, * or /|
|Assignment     |x = 1 or text = "Hello"|
|Comparison     |x == y           |
|Conversion     |x=100.to_i, x=s.to_i|

#### Basic I/O methods

Print something

print "Hello" -> print something and leave the cursor at the end.
puts "Hello" -> print the text and add a new line at the end if there isn't one.
p "Hello" -> p outputs an inspect string, which may contain extra information about the string.

e.g. 
```x = "Hello"
print x
put x
p x
```

Get input from keyboard

gets text = gets -> Get a input line from a keyboard and assing it to test variable.

Conditional execution -> If it is true then true else it's false and it always ends with end keyword.

```
if x == y
puts "Yes!"
else
puts "No!"
end
```

Special objects

Special value objects -> `true` and `false` serves as return value for conditional expressions. nil is kind of `nonobject` indicating absence of value and result. `false` and `nil` cause condition to fail; all other objects `true` or even `0` or `empty` string cause conditional expression to succeed.
``` 
true
false
nil
```

Default object -> method call that doesn't specify calling object are called on self.
```
self
```

Comments -> comments are ignored by the interpreter.

```
# line comment
x = 2 # inline commment
```

#### Ruby Identifiers

- Variables
    + Local
    + Instance
    + Class
    + Global
    
- Constants
- Keywords
- Method names
    
**Variables:** Starts with lower case or an underscore and consists of letters, underscore and/or digits. Ruby convention is to use snake case instead camel case.
> `first_name`

+ **Instance variables:** Serve the purpose of storing information for individual objects. Always starts with single at sign(`@`)
> `@age` or `@last_name`  

+ **Class variables:** Store information per class, follow the same rule as instance variable, except that they start with two at sing(`@@`).
> `@@total_points`

**Global variables:** It starts with a dollar sing(`$`).
> `$LOAD_PATH`

Variable naming rules:

|  Type   | Ruby convention  |
|---------------|-----------|
|local     |first_name|
|inatance     |@first_name|
|class     |@@first_name|
|global     |$first_name|

**Constants:** It begins with uppercase letter.
> `FilePath` or `Load_Path`

**Keywords:** Ruby has predefined, reserved terms. There are total 41 keywords.
> `def`, `if`, `_FILE_`

**Method names:** follow the same rules and conventions as local variables, In some contexts you can’t tell just by looking at an expression
whether you’re seeing a local variable or a method name—and that’s intentional. Message sending is achieved via the special dot operator: the
message to the right of the dot is sent to the object to the left of the dot.
> x = "100".to_i

#### Objects
If you know what OO is, the idea of Objects in Ruby is very straightforward:

- Almost everything in Ruby are objects.
- Every object is capable of receiving a certain set of messages.
- Each message correspond to a method.
```
e.g.
x = "100".to_i
y = "100".to_i(9) equals to 81 in decimal.
puts "Hello" #bareword-style invocation
```

#### Ruby installation

Ruby can tell you where its installation files are located. For this you need to preload a Ruby library package called `rbconfig` into your irb session. rbconfig is an interface to a lot of compiled-in configuration information about your Ruby installation, and you can get irb to load it by using irb’s -r command-line flag and the name of the package:
```
e.g.
irb --simple-prompt -rrbconfig
>> RbConfig::CONFIG[term] # Here term can be replaced by "bindir"
```

`RbConfig::CONFIG` is a constant referring to the hash (a kind of data structure) where Ruby keepsits configuration knowledge. `"bindir"` is a hash key. Querying the hash constant with a hash key will give you a corresponding hash value, which is the name of binary-file installation directory.

|Term    |Directory content|
|----------|-----------|
|rubylibdir        |Ruby standard library|
|bindir         |Ruby command-line tools|
|archdir         |Architecture-specific extensions and libraries|
|sitedir         |Your own or third-party extensions and libraries|
|vendordir      |Third-party extensions and libraries (in Ruby)|
|sitelibdir         |Your own Ruby language extensions (in Ruby)|
|sitearchdir  |Your own Ruby language extensions (in C)|

- Check default load paths:

ruby -e 'puts $:'
-e is inline script to interpreter.

- `load` method is to load other Ruby files in your project. With load ../filename.rb you can navigate to relative directories with the conventional double dot 'directory-up' symbol.
- `required` load it once, unlike load required doesn't know about the current working directory. `require "./loadee.rb"`
- `required_relative` This command loads features by searching relative to the directory in which the file from which it’s called resides. Thus in the previous example you could do this. `require_relative "loadee"`

### Ruby tools and applications

- ruby - interpreter
- irb - interactive Ruby interpreter
- rdoc and ri - Ruby documentation tools
- rake - Ruby make, a task-management utility
- gem - a Ruby library and application package-management utility
- erb - a templating system

#### Interpreter command-line arguments
|Switch    |Description|
|----------|-----------|
|-c         |checks the syntax of a program file without executing it, usually used in conjunction with -w|
|-w         |gives warning messages during program execution|
|-e         |executes the code provided in quotation marks on the command line, for multiple lines use literal line breaks (ie. Enter) or semicolons.|
|-l         |line mode: prints a newline after every line of output|
|rname      |requires the named feature, ruby -rscanf|
|-v         |shows Ruby version and executes the program in verbose mode|
|--version  |shows Ruby version information|
|-h         |shows information about all command-line switches for the interpreter|

#### rake
rake provides functionalities similar to make, it reads and executes tasks defined in file, Rakefile.
```
namespace :project do
  desc "Clean files temporarily generated during building"
  task :clean do
    # cleaning
  end
end
```
perform the task: rake project:clean
list all defined tasks: rake --tasks
namespace can have any depth: rake project:build:prod

#### gem

`gem install library`

gem downloads gem files as needed from rubygems.org
files in .gem format saved in cache subdirectory of gems directory
you can also install a gem on your hard disk: gem install /home/me/mygems/something.gem
providing a gem without full filename would look for it in current directory and local cache, also searches remotely for dependencies unless providing -l command-line flag
to uninstall a gem, use gem uninstall gemname
once a gem is installed, you can require it

#### Interactive Ruby Interpreter(irb)

 `irb`: Instead processing a file it processes what we type during a irb session.
 `irb --simple-prompt`: keep irb's output shorter.
 `irb --simple-prompt -noecho`: additional expression result is supressed.
 
 To exit from irb normally you can use `exit` or `Ctrl+C` or `Ctrl+D` will also work.
