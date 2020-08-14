# Classes in Ruby

1. 🧐What are classes?
2. 🤓Code Along: Juice Machine
3. 🤯Classes are fundamental to OOP

## What are classes?

**Discussion - What does the word class mean? How is this word used IRL?** 

While objects can be used to describe a near infinite number of "things", in our programs we typically want to predefine the types of objects that our program will use. 

We use classes to define different types of objects. 

A class acts as a blueprint or an outline describing:
 - **attributes**: the types of data an object may hold
 - **methods**: the functionality an object may perform

Classes help us avoid repetition when we want to create many objects that function similarly. 

Once defined, classes can be used to create an "instance", an object with the attributes and methods the class describes. All instances of a particular class share structure and functionality. 

In the example of a blog application, we may use classes to define and create objects that represent posts, users, or a service that uploads photos. In each case, the type of information and behaviors available to each instance of class is consistent: 
 - all `Post` instances will have a title and body 
 - every `User` instance has an email address and password
 - each `Uploader` instance uploads files by the same process

While the `Post` class describes what attributes a `Post` instance has (title and body), each instance holds the specific data for an individual blog post.

Classes help us constrain the types of objects we use in our program to ensure that they behave consistently while still giving the flexibility to describe things that have some variation. We use classes to build the language of our program by defining the vocabulary that it will use.

## Code Along: Juice Machine
### Classes
#### Create new file `juice_machine.rb` in this project directory.
`$ touch juice_machine.rb`

#### define the `JuiceMachine` class.
```
class JuiceMachine

end
```

#### run irb 
`$ irb`

#### load the juice machine class
`irb(main):001:0> load "juice_machine.rb"`

#### create a new instance of the `juiceMachine` class
`irb(main):001:0> juice_machine = JuiceMachine.new`
> => #<JuiceMachine:0x00007f9f9a8fc118 >

`irb(main):001:0> juice_machine.class`
> => JuiceMachine

### Instance Methods
#### define a `juice` instance method
```
class JuiceMachine
  def juice(quantity)
    puts "🍊🧃🍊🧃🍊🧃🍊🧃🍊🧃"
    puts "#{quantity} juice(s)!"
    puts "🍊🧃🍊🧃🍊🧃🍊🧃🍊🧃"
  end
end
```

#### reload the `JuiceMachine` class
`irb(main):001:0> load "juice_machine.rb"`

#### create a new `JuiceMachine` instance and call the `juice` method
`irb(main):001:0> juice_machine = JuiceMachine.new`
> irb(main):001:0> juice_machine.juice(5)
>
> 🍊🧃🍊🧃🍊🧃🍊🧃🍊🧃
>
> 5 juice(s)!
>
> 🍊🧃🍊🧃🍊🧃🍊🧃🍊🧃
>
> => nil

### Initializing Objects
#### define the initialize method
```
class JuiceMachine
  def initialize(orange_count)
    @orange_count = orange_count
    puts "ready to juice"
  end
  
  def juice(quantity)
    ...
  end
end
```
- The `initialize` method is called automatically when a new instance is created. 
- `@orange_count` is an **instance variable**, a variable that is relative to a particular instance of a class. It holds information about the number of oranges in *this* juice machine, a specific instance of a class.

#### update the juice method
```
class JuiceMachine
  def initialize(orange_count)
    ...
  end
  
  def juice(quantity)
    @orange_count -= quantity

    puts "🍊🧃🍊🧃🍊🧃🍊🧃🍊🧃"
    puts "#{quantity} juice(s)!"
    puts "#{@orange_count} remaining"
    puts "🍊🧃🍊🧃🍊🧃🍊🧃🍊🧃"
  end
end
```
- the `juice` method now subtracts the `quantity` argument from `@orange_count` and updates the user

#### create an instance of `JuiceMachine` with a number as an argument
`irb(main):001:0> juice_machine = JuiceMachine.new(188)`
> ready to juice
>
> => #<JuiceMachine:0x00007ff2ce2648a0 @orange_count=188>

`irb(main):001:0> juice_machine.juice(5)`
> 🍊🧃🍊🧃🍊🧃🍊🧃🍊🧃
>
> 5 juice(s)!
>
> 183 remaining
>
> 🍊🧃🍊🧃🍊🧃🍊🧃🍊🧃
>
> => nil

### Attribute Readers and Writers (Getters and Setters)
#### define an attribute reader method
```
class JuiceMachine
  def initialize(orange_count)
    @orange_count = orange_count
  end
  
  ...

  def orange_count
    @orange_count
  end
end
```
- the `orange_count` method returns the value of `@orange_count`

#### define an attribute writer method
```
class JuiceMachine
  def initialize(orange_count)
    @orange_count = orange_count
  end
  
  ...
  
  def orange_count
    @orange_count
  end
  
  def orange_count=(new_orange_count)
    @orange_count = new_orange_count
  end
end
```
- add an `=` sign to the method to mimic the pattern of assigning a variable in Ruby.

#### call the orange count getter and setter methods on a new `JuiceMachine` instance
`irb(main):001:0> juice_machine.orange_count`
> => 183
>
`irb(main):001:0> juice_machine.orange_count = 400`
> => 400

#### implement the ruby `attr_accessor` keyword
```
class JuiceMachine
  attr_accessor :orange_count

  ...

  # def orange_count
  #   @orange_count
  # end
  
  # def orange_count=(new_orange_count)
  #   @orange_count = new_orange_count
  # end
end
```
- the `attr_accessor` keyword automatically creates getter and setter methods for class instances
- `attr_reader` and `attr_writer` create only a getter or a setter respectively so our classes can restrict access to some attributes


## Classes are fundamental to OOP
Classes are core feature of Object Oriented Programming (OOP)

Thus far in our knowledge of Ruby classes, we've touched on two of the four core principles of OOP:
- **abstraction**
- **encapsulation**
- inheritance
- polymorphism

In the same way you don't need to inspect the engine every time you drive a car, classes give us a convenient way to separate and protect the implementation details from the utility.

### Abstraction
When you drive a car you don't operate or interact with all of the pieces under the hood directly. You use an interface designed to make driving safe and accessible. The steering wheel, pedals, ignition, and console are all abstractions that make the experience of driving a car possible by creating an interface that exposes the ways you can interact with the vehicle while hiding the details that are unnecessary for daily use.

The `JuiceMachine` class is an abstraction. It simplifies the way we can interact with a complex piece of machinery by clearly defining an interface. Instances of `JuiceMachine` can:
  - get and set the `orange_count` attribute
  - dispense any number of juices via the `juice` method 

Abstraction is an important concept in web development and we will continue to see ways in which developers, ourselves and others, design tools that are simple to use by using abstraction to hide details that might overwhelm users.

### Encapsulation
Separating a car's interface from the details under the hood not only simplifies use but it protects the car! The average driver isn't a mechanic and shouldn't modify the inner workings of their vehicle. The hood of the car encapsulates information and functionality that should be protected from the users of the car. It isn't possible to separate the battery from the engine by using the driver's interface, and nobody is allowed to adjust the value the car's milage. Encapsulation is good for both driver and mechanic, and gives integrity to the car and manufacturer. 

Classes give us tools to be specific about what information and functionality is available on an instance of a class.

The `JuiceMachine` class:
  - explicitly makes the orange_count attribute readable and writable
  - exposes the `juice` method

This makes it easier use the code we've written while maintaining a separate space where we can visit when we need to make repairs or build new features.

## What's Next
- private methods
- class variables and methods
- interacting between different classes
- class inheritance


