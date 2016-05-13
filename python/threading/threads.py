#!/usr/bin/python
import threading
from sys import argv

def threading_function(func, args = ()):
    th = threading.Thread(target = func, args = args)
    th.start()

# Returns the nth fibonacci number.
def fibonacci(n):
    if n <= 0:
        raise Exception("Input has to be a natural number. We output fibonacci numbers by ranking.")
    # Below is merely the recursive (recurrent?) definition of fibonacci numbers.
    if n == 1:
        return 0
    elif n == 2:
        return 1
    else:
        return fibonacci(n - 1) + fibonacci(n - 2)

def print_fibonacci(n):
    print fibonacci(n)

if __name__ == "__main__":
    for i in xrange(1, int(argv[1])):
        #print fibonacci(i)
        threading_function(print_fibonacci, (i,))
