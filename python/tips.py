# This file has interesting things about python

# Python is a structured language, as opposed to a free-form language like C.
# __name__ stores the name of the main module (this script) in a string.
print __name__
# Defining a function shadows already defined functions.
def list():
    print "this function works"
list()
# However, one cannot shadow some built-in functions like print