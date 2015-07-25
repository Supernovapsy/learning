# This file has interesting things about python

# Python is a structured language, as opposed to a free-form language like C.
# Since structure is imposed on Python, naturally readability
# becomes more imposed on Python.
# __name__ stores the name of the main module (this script) in a string.
print __name__ # Should be __main__
# Defining a function shadows already defined functions.
def list():
    print "this function works"
list()
# However, one cannot shadow some built-in functions like print

# In python, each character in a file is a byte, and so when you go to a
# certain byte position using file.seek(), the number represents the
# character at the same position as the byte count you passed to seek().

# Python is able to make extensive use of the default parameter concept in C/C++
# that is futher improved in Python. Multiple parameters can assume default
# values, and by explicitly setting keyword arguments, function arguments do
# not have to be stated in order, and so not only the last argument can have a
# default value as is usually the case in C++.

# Each python file can be imported as a module, and all functions inside the file
# become functions of the module which can be used by an outside script.

# range(a, b) gives a list of integers [a, b)

# the for loop in python dereferences the object looped for you.

# The print separation operator for strings is the comma, and a space is
# automatically inserted between objects.

# The concatentation operator is +, and can be used for all iterables, not just strings.

# We can also redefine builtin variables.
True = False
whatami = True
print whatami

# Use a while-loop only to loop forever, and that means probably never. This only applies to Python; other languages are different.

# Use a for-loop for all other kinds of looping, especially if there is a fixed or limited number of things to loop over.

# http://effbot.org/zone/python-with-statement.htm
# Do something "with" this "as" that

# In python, all variables declared in a file but not in a function is accessible
# anywhere in the file, including functions. This is especially important to note
# because if otherwise a variable undeclared in a function but defined in the file
# might be accidentally used in the function, causing undesired behaviour.
# but variable shadowing is NOT applicable in different scopes (indents in python).
# Only the function scope obeys variable isolation, and then only provides write-
# protection where global variables (variables in the file body and not functions)
# are read-only. In order to access these variables in functions, the global keyword
# must be used to declare the variable to remove write-protection in the function.

# The opposite of the split function of strings is the join function. By calling
# this function and passing in a list of strings, it concatenates the string
# elements and separates each with the string from which the join member function
# was called.

# One can index into lists just as one can index into arrays in
# matlab. [#:#] This is however done using the half-open range
# convention, not the closed range convention used by matlab.
# this is like the substr function in C++, except it applies to
# all lists in Python.

# not is !, and is &&, and or is || in Python;
# all other relational operators are the same as in other
# languages.

# When evaluated in an if statement, None is False.

# When iterating through a list of 2-tuples, one can unpack
# the variable after the "in" into two variables after the
# "for", which unpacks the list into two single-valued lists.

# Python does not allow for statements like below which might easily cause bugs.
# def this_doesnt_work(x):
#     return x = 5

# When calling or referring to functions, the brackets must
# be shown to distinguish them from other meanings such
# as types.

print dict
print dict()

# Further, each name can only represent one thing - whether it
# is a function, a class, or an object of some kind. It cannot
# be overloaded, even there is a simple method to separate them.
# Again, Python aims for code readability and minimization of
# coding errors.