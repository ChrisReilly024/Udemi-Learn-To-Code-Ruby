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
        - ** can only be used after class call **  
        - will list an objects inheritance chain as an array
        - will include non-classes like kernals or modules
        - 5.class.ancestor will  = [Integer, Numeric, Comparable, Object, Kernal, BasicObject]
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

ALIASES
    - creating a variable = to another variable doesn't create a new object
    - it just creates another pointer, a second reference to the object
    - x = 5,  y = x,  y.object_id will = x.object_id
    - if x changes, y will not