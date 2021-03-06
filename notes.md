SECTION 2 GETTING STARTED

PUTS, PRINTS, P
    - PUTS
        -adds linebreak at end of line
        - responds to user linebreak as well
        - ex.  puts "hello
                     world"
            will print as hello
                          world
    - PRINT
        - does not add a linebreak at the end
        p 'hello'
        p 'world'
        will output helloworld
    - p
        - gives data about what it is printing
        - p "hello world" will print as "hello world"
            - the quotation marks will remain, letting you know its a string
            - puts and print will not have the quotatons
        - p does add linebreak like puts 
        - p user line break is shown as /n

            p "hello
               world"
            will print as "hello /n world"
            p "hello"
            p "world"
            will print as "hello"
                          "world"
CONSTANTS
    - represents something that should not change over time (names, birthyear, ect.)
    - unlike other languages, Ruby constants can be changed
        - Ruby will warn the user but will still change it.
GETS
    - stands for "get string"
    - all input from user will be a string, user types 5 ruby gets "5"
    - info is entered by hitting enter, Ruby will interpet this as a linebreak
    - it will add /n at the end of the string
    - use chomp to remove break
CHOMP
    - chomp will remove the last character of the string its called on
    - using this with gets removes the /n from user input

PARALLEL VARIABLE ASSIGNMENT
    - similar to deconstruction
    - can create multiple variables in one line
        a, b, c = 10, 20, 30
        a = 10
        b = 20
        c = 30
    can swap variables in a similar manner
        a = 10, b = 20
        a, b = 20, 10
        a = 20
        b = 10
----------------------------------------------------

SECTION 3 NUMBERS & BOOLEANS

    .step
        - used to enumerate by a set value
        - takes a block 
        - 0.step(100,5) {|num| p num}
        - starts at 0, goes to 100, incremints 5 each time
        - result will be 0,5,10,15,20 ect.

-------------------------------------------------------------------------
SECTION 4 STRINGS

    MULTI-LINE STRINGS
        - use shovel operator to create multi line strings
        - after shovel, input any letters to be both start and end of string
        - ** no space between << and start variable
            words = <<ST
                this is a multline string
                see? this is a new line
            ST
        - ST starts and ends string in this example
        - line breaks, tabs, spacing is all preserved in output
    ESCAPE CHARACTERS
        - \ can fix quote problem
        -"he said "hello" to me"
            quotes will break code
            \"hello"\ will fix this
        \n will break line without having to use another p or print or puts
            'hello \n world'
                will print 'hello
                            world'
        \t will input a tab before string
            '\t hello world'
                will print '  hello world'
    EXTRACT MULTIPLE CHARACTERS
        word = 'hello world'
        word[2,5] will start at index 2 (l) and extract 5 characters
            result = 'llo w'
    
    
--------------------------------------------------------------------
SECTION 6 METHODS & CONDITIONALS

    CONDITIONAL ASSIGNMENT
        - will assign an object a value if value is nil
        - ||= is how to invoke this operation
        ex  y = nil
            y ||= 5
            y will = 5
            -----------
            x = 3
            x ||= 6
            x will = 3
        - used when outcome is unknown, a safety of sorts
    CASE STATEMENTS
        - type case to start condition
            case food
        - when something happens, do this
            case food
            when "Steak"
                "Pass the steak sauce!"
            when "Sushi"
                "I love Sushi"
            when "Tacos", "Burritos", "Chips"
                "I like cheese"
            else 
                "not hungry"
            end
            ** can have multiple options on one when
            ** must end in else statement
            ** can also use then to save lines
            case grade
                when 90..100 then "A"
                when 80..89 then "B"
                when 70..79 then "C"
                when 60..69 then "D"
                else
                "F"
            end
-------------------------------------------
SECTION 7 RANGE

    ** ("A".."z") will include special characters
    === can be used instead of include?()
----------------------------------------------
SECTION 8 ARRAYS I

    - Array.new(4) {Array.new(3, nil)}
        - 4 sets how many elements in array, all nil by default but can be changed
        - 3 will set # of sub arrays, nil will represent values in subs
    FETCH
        - will fetch element at given index
            ar = [1,2,3]
            ar.fetch(1) == 2
        - second value will be used if false
            ar.fetch(5, 'too high') will = 'too high'
    VALUES_AT
        returns an array with specified indexes
        ar = [1,2,3,4,5,6]
        ar.values_at(0,2,4) will = [1,3,5]
        if value doesn't exit will be nil in array
-----------------------------------------
SECTION 9 ITERATION

    UNPACK ARRAY
     - parallel assignment to assign sub arrays
     - ar = [['tom','steve','joe'], ['sally','jen','alice']]
     boys, girls = ar
     boys = ['tom', 'steve', 'joe']
     girls = ['sally','jen','alice']
SECTION 18 CLASSES 1

Object = custom container for data, groups functionaliites into a single object

Purpose of Object Oriented Programming
    - Using code to model real life objects as classes

CLASSES

    INSTANT VARIABLES
        - attributes that define and belong to an object
        - attributes provide information about an object's currents state
        - each object has a custom state
        - begin with an @ to define an instance variable
        - variables are local to method, we need instance variables to be available to the entire object so we use @ to define
        - when called in methods @ must precede so Ruby knows where to look for value
        - variables cannot be accessed directly unless a getter method is defined
    INSTANT METHODS
        - interact with an object and belong to it. 
        - object calling the method on is 'receiver'
        - 
    INITIALIZE METHOD
     - is run automatically when a new instance is created
     - assigns an object's initial state, it's default instance variables
     - state can be altered later, through methods
     - initialize method is private by default, cannot be accessed by calling it directly.
    ENCAPSULATION
        - object tries to restrict access to it's data and prevent it from being manipulated
        - instance methods will allow user to interact with object in a protected way.
    INSTANSIATION
        - creating an ojbect from class blueprint 
    SUPER CLASS
        - class that current class inherits from
        - Basic Object is the supreme Ruby class, the only class with no superclass, all others are descended from this.
    
METHODS
    .is_a?(type)
        - returns boolean if object is = to specified type
        - 5.is_a?(Integer) == true, 'hello'.is_a?(Integer) == false
    .class will show an objects class
        - 5.class will = Integer or x = 5  x.class will = Integer
        - [1,2,3].class will = Array ar = [1,2,3]  ar.class will = Array
    .superclass will class current class is inherited from
        - ** can only be used after class call **  
        - 5.class.superclass will == Numeric  b/c 5 is class Interger and Integer is inherited from Numeric
    .ancestor
        - ** can only be used on class, not an object **  
        - will list a classes inheritance chain as an array
        - will include non-classes like kernals or modules
        - ex Integer.ancestor will  = [Numeric, Comparable, Object, Kernal, BasicObject]
    .methods
        - use with .sort to sort alphabetically
        - will return a list of all methods available to the object as an array
        - can use & to combine with another object, result will be methods only available for both objects
        - str = 'hello'.methods | num = 5.methods | p str & num will return shared methods 
    .respond_to?(method)
        - boolean if object will respond to method
        - method to check must be symbol
        - 'hello'.respond_to?(:upcase) will = true 
    .instance_variables
        - returns an array of an objects instance variables
        - does not return values, just variables name
        - cat.instance_variables [@:name, @:age, @:color]
GETTER METHOD
    - instance variables are protected by default, cannot be called directly (encapsulation)
    - can access them through a getter method
    - getter method does not access variables directly but rather through its method call
    - good practice to name method same as variable
SETTER METHOD
    - also called writer methods
    - allows user to change an object's state
    - does not expose current variables, only changes them
    - good practice to define method with an =
    - = allows for syntactical surgar for method call  user_name = 'me' 
        def user_name=(new_name)
            @user_name = new_name
        end
ATTR METHODS
    - shortcuts for getters/setters
    - use symbols for variable attr's
    - attr_reader returns instance variable
    - attr_writer allows for setter
    - attr_accessor = getter and setter
    
    - def username
        @username
      end

OVERRIDING METHODS
    - can define new function for methods within instance variables
    ex.
        - .to_s gives a string like representation of an object
        - when called on class instance it will return object id
        - Ruby looks for a called method first in the objects class
        - if it can't find it, it will go up to the first superclass and look there and continue til found, then runs the method
        - if we define .to_s in our class, Ruby will fun the first instance of .to_s it finds instead of it's default function

ALIASES
    - creating a variable = to another variable doesn't create a new object
    - it just creates another pointer, a second reference to the object
    - x = 5,  y = x,  y.object_id will = x.object_id
    - if x changes, y will not
-------------------------------------------------------------------------

SECTION 19 MIXINS & MODULES

MODULES

    - a toolbox or container of methods or constants
    - can be used as needed
    - creates namespaces for methods with same name
    - cannot be used to create instances
    - can be mixed into class to add behavior
    - subclasses have access to any modules parent classes includes

SYNTAX & STYLE
    - module names are writtin in upper camel case
    - constants in modules are written in all caps
    - no initialize method, module cannot instansiate
    MODULE METHODS
        - module methods are accessed with the dot operator (module.method)
        - self defines method in module. use self in method name (self.method) unless injecting
        - injecting modules, don't call on module itself, want to call on class so no self in method names
        - there are situations when you dont want self but learn it later.
        - can share method names from other modules since module is specified in call (Circle.area, Rectangle.area, Square.area)
    MODULE CONSTANTS
        - constants are accessed with scope resolution operator ::
        - SRO tells object to look in what module to find constant
        - class::constant

MIXINS
    - mixin is a module added to a class
    - it injects behavior into a class
    - it allows us to mimic inheritance from more than one class
    - modules are imported with include keyword
        - ex. include Comparible allows class to make use of <> <=> ect.)
        - best practice is place above initializer
    - Why import instead of including method in original class?
        - classes should have a specific object model
        - mixins allow code to be brought in to a class that is unrelated to it's model
        - since classes inherit this will ensure sub classes do not get useless runtime consuming behaviors it doesn't need
        - mixins are DRY, write once use in multiple classes

CLASS INHERITANCE VS MIXINS
    - class inheritance should be a 'is a' relationship
        - ex. a king is a type of chess piece
    - modules should have have an 'has' relationship
        - it has functionality
        - it has a feature set a class can use

METHOD LOOKUP PATH
    - Order matters with modules
    - Ruby looks for method in class first
    - If it can't find that method, it looks at the last module imported
    - if no method there, it goes to the second to last module and so on
    - if module methods have the same name the last module imported is used
    - class method with the same name over write any module method
    - .ancestor shows Ruby path when looking for object

PREPEND KEYWORD
    - reverses order of precedence when Ruby is looking up a method
    - used in same way include is
        - include Module_name,  prepend Module_name
EXTEND KEYWORD
    - takes module methods and makes them class methods of whatever 
    - good for keeping your code clean
        - you can define class variables or class methods in a moudule, then just import them into class code
ENUMERABLE MODULE
    - yield applies block to method
    - DRY way of not having to use dif methods for dif blocks
    - def each(ar)
        yield
      end
      object.each {|attribute| p attribute}
      object.select {|attribute| attribute = 'apple' }
    - ENUMERABLE each method gives us access to a whole array of methods without having to define multiple methods
--------------------------------------------------------------------------- 

SECTION 20 CLASSES II


    PRIVATE METHODS
        - recall we can't call initialize b/c it is 'private'
        - private methodscannot be called outside of the object. It can only be called by another instance method on the same object
        - set to private by simply typing private into the class
        - anything below the private line will be private
        - trying to call a private method returns an error
        - can type public below private to return all below it to public
            private
        ex.   def test1
                do something
              end
            public
              def test2
                do something
              end
        - test1 cannot be called by user but test 2 can. 

    PROTECTED METHODS
      -review
            - Public methods are free to all to use and allow interaction  with object
            - private methods cannot be invoked by user or other objects

      - protected methods can be called by any object of the same class
      - do to give attirbutes getters if you want them hidden
      - protected variable can be used in methods but cannot be called directly to get value
        @value
        car1.value = error, protected method
        car1.value > car2.value will work fine but won't expose variable

    ** variables can have public readers and private writers ect.

METHODS OVER INSTANCES
    - ex. bank account stores amount in pennies
    - user will want to see their valance in dollers
    - rather than create two variables, cents/dollers, we'll write a method
        that will convert and display amount for user
    - if for whatever reason, the amount of pennies in one doller changes
        we don't have to fix all variables affected by this change, just the method
    - DRY principle
        - This can lead to problems on bigger projects that could  break with conflicting.
    - PSUEDO VARIABLE
     - variable that alters the presentation of a instance variables withouth modifying them (cents to dollers, secs to hours)
MULTIPLE SETTERS IN ONE
    - always preferred to interact with variables through methods, don't change, or set instance variables dierectly except for init.
    - need to use self if calling other instance methods within a instance method
    - Ruby will think your creating a new variable otherwise
    ex. def change password(username,password)
            validates and changes password
        end
        def reset(password)
            self.password = password  | # using class = syntax
        end
STRUCTS
    - are mini classes with less functionality
    - kinda like a class with only instance variables
    - complex behavior (methods,ect) should be in classes
    - structs are used when you need only a framework for an object | an object with constant state

CLASS VARIABLES AND METHODS
    CLASS VARIABLE
        - some data extends beyond scope of single object
        - instance variables should make a specific object unique
        - sometimes all instances have something in common
        - if so, doesn't make sense to make this an instance variable, DRY
        - class variables belong to the whole class, not a single object
    CLASS METHOD
        - a method thats available to the whole class
        - contain functionality that does not involve a specific single instance
        - class methods can be called even if there are no class objects
    SYNTAX
        - class variables use double sign @@
        - methods must be prefixed with self keyword
            - otherwise Ruby will think it is a instance method
        - ** self will still refer to object, not class
        - ex. all bikes made from same company so @@maker = bike company
        - ex. count, count all objects created from class, not stored in instance but class itself
        - if getter for class v doesn't use self, it doesn't have to be repeated in every instance...DRY
        ex. def maker
              @@maker
            end
          -every object can call this without duplicating it in its creation
----------------------------------------------------------------------------

SECTION 21 CLASSES III

INHERITANCE
    - a way to obtain all methods from another class
    - DRY principle
    - superclass = parent class
    - subclass = child class
    - ** class can have only 1 superclass ** (big reason for modules)
    - subclass = 'is a'  a type of superclass
    SYNTAX
        - class inherits with < symbol
            class Car < Vehicle
            car class inherits vehicle methods
    - can obtain method_chain with .ancestors
    - can check indiviudal class heirarchy with <
        - Manager < Worker
        - Manager inherits from Worker

    .is_a(class) returns true if object inherits from class
    .instance_of?(class) returns true if object is instance of class

SUPER KEYWORD
    - DRY principle
    - removes need to retype instance variables for each subclass
    - include instances you want inherited in the super function
        super(name, age)
    - can also be used to add more functionality to a method
    ex.  def introduce
            'hello'
        end
        def introduce
            result = super
            result += 'my name is ${name}
        end
        introduce('me') = hello my name is me
    - if adding to super method with arguments need to use ()
    - super() tells Ruby not to pass arguments to first call of method
    - in initialize, super(something) passes that instance method to superclass
    - still need to put it in initialize argument
        -ex class Truck
                def initialize(maker, siren)
                    super(maker)
                    @siren = siren
                end
            end

SINGLETON CLASS & METHODS
    - Singleton method is available for one object only
    - ex  tom = Person.new,  dan = Person.new
        def tom.cheat
            'tom wins'
        end
    - only Tom can call this method

HASH INITIALIZER
    -

    - the standard initializer will break if not all agruments are given
    - arguments given in wrong order will give incorrect values for variables
    - using hash to initialize can solve this problem
    - hash init will simply assign nil to attributes not given, object still created unlike standard init that would fail entirely if there's one error
    - also ensures right data is going to the right variable regardless of order
        def initialize('name', details)
            @name = name
            @age = details[:age]
            @job = details[:job]
        end
        info = {age: 40, job: banker}
        b = Banker.new('name', info)
    - can set default variables if no arg given  details = {}. all missing attributes will be nil
    ---------------------------------------
    debugger code added
    ---------------------------------------