# Access control is a very important part of the object-oriented programming language which is used to restrict the visibility of methods and member fields to protect data from the accidental modification

# Important points:
# - The visibilty of the class and instance variables are always private.
# - Access controls are only applicable for methods.

# Statements: 
# Public methods have no access control - they can be called from the outside of the class definition by the instance of that class or it’s subclasses.
# Both protected and private methods cannot be called from the outside of the defining class.
# Protected methods are accessible from the subclass and private methods are not.
# Private methods of the defining class can be invoked by any instance of that class.
# Public access is the default one.