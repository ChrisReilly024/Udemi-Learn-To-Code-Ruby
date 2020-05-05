MODULES

    - a toolbox or container of methods or constants
    - can be used as needed
    - creates namespaces for methods with same name
    - cannot be used to create instances
    - can be mixed into class to add behavior

SYNTAX & STYLE
    - module names are writtin in upper camel case
    - constants in modules are written in all caps
    - no initialize method, module cannot instansiate
    MODULE METHODS
        - module methods are accessed with the dot operator (module.method)
        - self defines method in module. use self in method name (self.method)
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