-----------------------------------------------------------------
SECTION 20


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
-------------------------------------------------------------------