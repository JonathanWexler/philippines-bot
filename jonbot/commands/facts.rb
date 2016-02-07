module Facts
@facts = ["Dynamic Typing: There are very good things about statically typed languages, such as compile-time verifiability and IDE support. However, in my experience, dynamic typing really helps get projects bootstrapped and smooths along changes, especially in the early to middle stages of a project. \n I'm very happy that I don't need to create a formal interface for my new objects to implement simply to enable me to easily swap out that class for another later on.",
"Duck Typing is effectively just an extension of Dynamic Typing. In Ruby, methods that expect to be able to operate on String objects don't do checks for isa?(String). They check whether the object respondto?(:tostr) and then calls tostr on the Object if it does. Similarly, objects that represent Paths in Ruby can implement a to_path method to provide the path representation.\nIn Rails, we use this technique for objects that have 'model' characteristics by expecting them to respondto?(:tomodel). This allows us to support any object in relevant contexts, provided those objects can supply us with a 'model' representation of themselves.",
"Ruby provides a language feature similar to 'traits' in Scala, Squeak, and Perl. Effectively, Ruby modules allow the dynamic addition of new elements of the class hierarchy at runtime. The use of super is dynamically evaluated at runtime to take into consideration any modules that might have been added, making it easy to extend functionality on a superclass as many times as desired, without being forced to decide where super will land at class declaration time. \nAdditionally, Ruby modules provide the lifecycle hooks append_features and included, which make it possible to use modules robustly to isolate extensions from one another and to dynamically extend classes on the basis of feature inclusion.",
"String Eval can make it possible to take Ruby-defined structures, like Rails routes or AOP-definitions, and compile them into Ruby methods. Of course, it is possible to implement these things as add-ons to other languages, but Ruby makes it possible to implement these sorts of things in pure Ruby. It is, to a large degree, a self-hosting language.",
"You can create a hash from a list of values by using `Hash[...]`. It will create a hash like below: ```
Hash['key1', 'value1', 'key2', 'value2']
# => {'key1'=>'value1', 'key2'=>'value2'} ```",
"Introduced quite recently and the new way recommended to define scopes in Rails, the -> sign, a.k.a Lambda Literal, allows you to create lambda easily. ``` 
a = -> { 1 + 1 }
a.call
# => 2
 
a = -> (v) { v + 1 }
a.call(2)
# => 3 ```",
"The double star is a neat little trick in Ruby. See the following method: ``` def my_method(a, *b, **c)
  return a, b, c
end ``` a is a regular parameter. *b will take all the parameters passed after the first one and put them in an array. **c will take any parameter given in the format key: value at the end of the method call.

See the following examples:

One parameter",
"Sometimes you might want to give the option to either accept a single object or an array of objects. Instead of checking for the type of object you’ve received, you could use [*something] or Array(something). ``` 
stuff = 1
stuff_arr = [1, 2, 3] 

[*stuff].each { |s| s }
[*stuff_arr].each { |s| s } ```",
"The Double Pipe Equals is a great tool to write concise code.

It’s actually equivalent to the following: ``` a || a = b # Correct
a = a || b # Wrong 
def total
  @total ||= (1..100000000).to_a.inject(:+)
end```",
"You can specify the keys that you are waiting for and even define default values for them! a and b are mandatory keys. ``` def my_method(a:, b:, c: 'default')
  return a, b, c
end
 
hash = { a: 1, b: 2, c: 3 }
my_method(hash)
# => [1, 2, 3] ```",
"You might want to generate a list of numbers or put the entire alphabet inside an array. Well, you can use ruby ranges to do this.

A to Z ``` 
('a'..'z').to_a
(1..10).to_a
```",
"Tap is a nice little method that improves code readability. Let’s take the following class as an example. ```
def my_method
  User.new.tap do |o|
    o.a = 1
    o.b = 2
    o.c = 3
  end
end ```",

"By default, when trying to access a value not defined in a hash, you will receive nil. You can actually change this at initialization. ```  a = Hash.new(0)
a[:a]
# => 0
a = Hash.new({})
a[:a]
# => {}
a = Hash.new('lolcat')
a[:a]
# => 'lolcat' ```"]
def self.facts
    @facts
end

def self.random_fact
    @facts.shuffle.first
end

end