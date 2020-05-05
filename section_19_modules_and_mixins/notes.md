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
    
