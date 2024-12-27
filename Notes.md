
## Table of Content
- Introduction(#introduction)
- Ruby Foundations(#ruby-foundations)
- Objects, Methods and Local Variables(#objects-methods-and-local-variables)

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

### Objects, Methods and Local Variables

Generic object

> obj = Object.new

define a method using `def`

```
def object.talk
pluts "I'm an object."
end
```

Sending message to object

> obj.talk

If there is no method by the name, error handling measures are taken.

Methods that take arguments

- Indicate the arguments by means of a list of variables in parentheses after the method name(arguments can be required or optional).
- The variables listed in the method definition are the method’s `formal parameters`.
- The values you supply to the method when you call it are the corresponding `arguments`.

```
def obj.c2f(c)
(c * 9 / 5) + 32
end
``` 

> obj.c2f(100) >> 212.0

**Note:** The parentheses can be optional in both the cases. It is not true everytime. It is good to use parentheses everytime.

> def obj.c2f c

> obj.c2f 100 >> 212.0 

```
e.g.

student = Object.new

def student.name
"John Appleseed"
end

def student.standard
"Fifth"
end

def student.age
11
end

def student.is_monitor? # Ruby let us put question mark at the end of method name to make the method call look like a question.
false
end

querying:
print "The name of the student is: "
print student.name + ", and is in "
print student.standard + " standard and his age is "
print student.age + " years. He is "
print student.is_monitor ? "" : "not" + "the monitor of the class."
```
- #{...} is used for string interpolation.
- `false` and `true` are special terms in Ruby. They are objects. 
- Every object in Ruby has a truth value and almost every object has true value in Ruby.
- Only false and nil value have truth value false.
- Everything in Ruby has a Boolean value, and sometimes it’s not what you might expect. 

#### Innate behaviour of an newly born object

To see the innate methods of an object, we can call `methods` method.

> p Object.new.methods.sort

When we create a object using Object.new that is call `Generic object`. We have one more object that is BasicObject and that is create using `BasicObject.new` and it is a king of proto-object who have only seven methods and methods method is not one out of the seven methods, which means we can't see any innate methods on BasicObject.

#### Some important innate methods

- object_id: Can be used to uniquely identify the object. It's like reference to an object.
- respond_to?: This method is used to check whether the object respond to the method.
```
e.g.
obj = Obejct.new
if obj.respond_to?("talk")
obj.talk
else
print("Sorry! the object doesn't respond to method 'task'")
end
```
- send: can be used to send message to an object.
```
obj.send("talk")
```
- __send__: Alternative to call send, it avoid conflict with dev defined send.
- public_send: This can't call object's private methods.

#### Method Arguments

- Providing incorrect number of arguments can result in `ArgumentError`.
- To provide any number of arguments put asterisk (`*`) in front of single argument name. e.g. def obj.multi_args(*x)
- We can provide default arguments. e.g. def obj.multi_args(a, b, c=1)
- Ruby tries to assign values to as many variables as possible. And the sponge parameters get the lowest priority.
- if the method runs out of arguments after it’s performed the assignments of required arguments, then a catch-all parameter like *x ends up as an empty array.
```
e.g.
def mixed_args(a,b,*c,d)
puts "Arguments: "
p a,b,c,d
end

mixed_args(1,2,3,4,5) => Arguments: 1, 2, [3, 4], 5
mixed_args(1,2,3) => Arguments: 1,2,[],3
```

- If there is any optional parameter in the method, the return value of the method call is an array consist of all the values.
```
e.g.
def args_unleashed(a,b=1,*c,d,e)
puts "Arguments: "
p a,b,c,d,e
end

args_unleashed(1,2,3,4,5) => Arguments: [1,2,[3],4,5]
args_unleashed(1,2,3,4) => Arguments: [1,2,[],3,4]
args_unleashed(1,2,3) => Arguments: [1,1,[],2,3]
args_unleashed(1,2) => ArgumentError: wrong number of arguments(2 for 3+)
```
- required arguments are handled first, then the default one and then the sponge.
> def args_demo(a,b,c=1,d*,e,f)

-
