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
-----------------------------------------
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
    ---------------------------------------------- 