# Just like Python, Ruby is a general purpose high-level interpreted language.
# Unlike Python, however, Ruby is much more freeform, and does not
# have the limitation of having to indent code in Python.

# Ruby's printing syntax is like Python, but the comma separator
# for print does not pad spaces between strings, and the comma
# for puts pads newlines between strings.

# Like most languages, an enter from a prompt by the user on
# the standard output writes a newline to the output, making
# printing a newline character to the output unnecessary after
# a prompt.

# http://stackoverflow.com/questions/12041492/ruby-whats-the-difference-between-stdin-gets-and-gets-chomp

# ruby docs: http://stackoverflow.com/questions/1575373/why-does-my-ruby-ri-tool-not-return-results-in-command-prompt

# <file>.seek(0) is the same as <file>.rewind()

# One has to declare a script to be a module which can be
# imported through a module statement wrapping the functions
# in file, which doesn't have to be the name of the file.
# All functions must be declared as <module name>.<function name>
# or else the functions will be treated as private functions
# inaccessible to the script which required the module.

# Ruby allows the dropping of brackets on functions if no
# argument is given. This is different from Python where
# brackets are always needed for functions to distinguish
# them for objects.

# One important difference between Python and Ruby is that
# Python does not respect what one might expect to be scope
# isolation coming from a language like C, so that all
# variables that are defined in a file are anywhere accessible
# within a Python script. However, the same is not true in 
# Ruby, where local scope, such as within a function is respected.

# This link explains begin, rescue, ensure, end, which form
# the keywords required to handle exceptions.
# http://stackoverflow.com/questions/2191632/begin-rescue-and-ensure-in-ruby

# next is equivalent to continue in a for loop as C

# This link explains the keywords for, while, until, break,
# next, redo, retry (retry has to go with begin and end).
# http://www.tutorialspoint.com/ruby/ruby_loops.htm

# Ruby likes to put keywords that do the opposite of conventional
# ones. until instead of while, and unless instead of if.
# They function the same apart from their opposite meanings.

# The code below shows a Rubyism.
cities = {
  'CA' => 'San Francisco',
  'MI' => 'Detroit',
  'FL' => 'Jacksonville',
  'NY' => 'New York',
  'WY' => 'Cheyenne'
}

city = cities['TX']
# If the variable's value is nil, then replace it with the RHS.
city ||= 'Does not exist'
puts "The city for the state 'TX' is: #{city}"

# Hashes enumerate their values in the order that the
# corresponding keys were inserted.
cities.each {|kv| puts "#{kv[0]}, #{kv[1]}"}

# Unlike C++, both Ruby and Python require functions inside classes
# to have the class scope explicit when declaring the function.
# Ruby has the extra scope keyword module, for which the same
# requirement is present.

# It is a further requirement in Ruby that both module and
# class names must have their first letters capitalized.