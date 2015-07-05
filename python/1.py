import sys

def print_two(*args):
    arg1, arg2 = args
    print "arg1: %r, arg2: %r" % (arg1, arg2)

def print_two_again(arg1, arg2):
    print "arg1: %s, arg2: %s" % (arg1, arg2)

def print_one(arg):
    print "arg: %s" % arg

def print_():
    print "I don't take any arguments"

def sys():
    print "this function works"

print_two('HAHA', 'LOL')
print_two_again("lolol", "rofl")
print_one("bob")
print_()
sys()