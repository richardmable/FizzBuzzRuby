#Ruby basics notes by Richard Mable
# print hello world 
puts "hello world"


# to declare a variable
# naming conventions: lowercase to start, underscore for spaces, important for Rails
my_var = 15
another_example_with_lots_of_spaces = 25

# Floats are numbers with decimal points
# 47.35564

#  Integers can be Fixnum (a number without a decimal)
# 2, 2000, 435
# or a Bignum, very large number
# 236362163136236325

# Strings are a line of text stored in quotations
"This is a string"
"4 + 5 this is also a string"

# Symbol, unique to Ruby, a colon followed by some words or a string
#can set multiple vars to :houses, will only take up one slot in the memory
h = :houses

#Booleans (TureClass, FalseClass).  True or False
b = true



#Hashes. Similar to arrays, used to store key => value pairs
myHash = {:jan => "January", :feb => "February"}
#to access a value
myHash[:jan]

# Creates a variable called name, sets it equal to your name, then
# outputs the variable
my_name = "Richard"

puts my_name

#Array, a collection of data. Can be symbols, strings, hashes, vars, numbers
["here", "we", "go", 4, 3, 7, my_name, myHash, :houses]

# Assigns a new array to a variable called holidays with a list of
# holidays inside of the array as strings

holidays = ["Christmas", "Thanksgiving", "Kwanza", "Superbowl Sunday"]
puts holidays[2]

# Creates a new hash assigned to a variable called
# holidays_and_dates - the keys should be a holiday 
# and the values should be the date it is celebrated, both strings
# you don't need ":" can put in vars or reference an array, etc

holidays_and_dates = {:christmas => "December 25", :thanksgiving => "Last Thursday in Nov", :independence => "4th of July"}

puts holidays_and_dates[:thanksgiving]

# use gets to accept user input in the terminal
puts "What is your name?"
name = gets
puts name.size
puts name

#Difference between symbols and strings: 
# symbols will always point to the same place in the memory, saving space
# talk = "hello"
# hey = "hello"
# The two vars above will take up 2 different spots in the memory
# h = :hello
# hi = :hello
# The two above will take up 1 spot in the memory.
# A symbol is immutable. It is impossible to concatenate one symbol to another:
# :hello << :world will return an error
# symbols are inherently more efficient

#Test a condition. Triple equals to test type as well.
# 2 == 2
# >true

# "hello" == "hey"
# >false

#Logical statements:
#don't need parens, don't need curly braces, need "end" to close off block of code.

if 5 > 10 
	puts "This is false"
end

if 5 < 10
	puts "This is true"
end

if 5 > 10 
	puts "This statement is false"
elsif 5 > 10
	puts "Yes it is"
else
	puts "Should never get to this message"
end


a = 5

#"and" "or" to check multiple conditions
a == 5 && a == 6
a == 5 || a == 6

#loops: for, while each

#for loop. This will print out the line 5 times with the number 0-4 place in the var
#which is denoted in the #{i}. ".." is inclusive of the end number
#and "..." is exclusive of the end number. 0..4 prints 0, 1, 2, 3, 4, 
#and 0...4 prints 0, 1, 2, 3
for i in 0..4
	puts "currently on the number #{i} iteration of this loop."
end

#loop from 0 to 10, print even numbers

for i in 0..10
	if i%2 == 0
		puts i
	end
end

#use "..." because otherwise the loop will extend outside the array, returning an error
array = ["this", "is", "an", "array"]
cars = ["honda", "ford", "chevy", "subaru"]

for z in 0...array.size
	puts array[z]
end

#each loop: don't need to know size of array, will just go to the end of array
cars.each do |cars|
	puts cars
end

#while loop


#functions, block code that has a name and can be called later, can take arguments
#don't need to use return keyword, don't need parens for parameters
#don't need them for arguments either though it can get confusing depending on names
def add_two(n)
	n + 2
end

a = add_two(5)

puts a

# exercises for functions

# Adds ﬁve to argument given 
def add_five(n)
	n + 5
end

# Multiplies argument given by 15 
def mult_fifteen(n)
	n * 15
end

# Performs a mathematical operation using four integer and/or ﬂoat arguments
def four_op(a, b, c, d)
	(a * b) + (c - d)
end

# Prints the argument given four times
def print_four(text)
	for t in 0..3
		puts "#{text} number #{t}"
	end
	#need something to have ruby return when using a function
	text
end

#Prints an uppercase version of the argument given
def make_upper(text)
	puts text.upcase
end

#is it even?
# def is_even(num)
# 	(num).round.even

#calling and printing each function exercise

puts add_five(5)

puts mult_fifteen(5)

puts four_op(5.23, 4.45, 3.21, 2.22222222222)

puts print_four("hello world")

puts make_upper("hello good day there")

# Extra Basic Ruby Exercises

# 1) create a function that accepts two arguments
# If the two arguments are integers, return "Numbers!!"
# If one argument is an integer, return the other argument the number of times of that integer
# If neither argument is an integer, print out the two other arguments
# In all other cases ask for the user input and print out what type that user inputed
# def what_am_i (arg, arg2)
#     if arg 

#     arg
# end

# 2) create a function that takes a boolean value
# If that value is true, return any random number
# otherwise return a randomly selected color sheet (e.g. "blue sheet", "red sheet")
# def bool_sheet(bool)
    
# end

awesomeString = "Hello world"

#is the string empty?

awesomeString.empty?
#should return false

#how many chars is the string?
awesomeString.length

#concatenation: bringing two strings together
awesomeString = "Hello" + "world"
puts awesomeString
#should be Hellworld

#can do without the plus sign. This only works on same type of data, no mixing
awesomeString = "Hello" "world"
puts awesomeString

#chains: (same result as plus sign or space between)
awesomeString = "hello" << "class"

#concat method
awesomeString = "hello".concat("world")

#interpolating strings (putting vars or any ruby code inside a string)
score = 31
awesomeString = "The score was #{score} to #{score}, which is a tie!"
puts awesomeString

#loading specific parts of a string:

#char at pos 0
puts awesomeString[0]

#from pos 0, get 3 chars
puts awesomeString[0,3]

#from pos 0 thru position 5 (incl)
puts awesomeString[0..5]

#from pos 0 up to pos 5 (exclusive)
puts awesomeString[0...5]

#2 from the left, 1 from the right
puts awesomeString[2..-2]

#pull out certain words and replace them
awesomeString = "Hello world"
awesomeString["world"] = "universe"
#should print out Hello universe

#substitution with gsub: yourString.gsub "world", universe (find, replace)
#can also be used with regular expressions  http://rubular.com/

#can multiply a number by a string, will print it that many times

#can insert text like so:
yourString = "Hello World"
yourString.insert 1, " to the"
puts yourString

#chomp, chop, reverse
#chomp eliminates the return (/n) function.
#chop eliminates the last char
#reverse reverses the order of the string

puts "hellop".chop
puts "hellop".chop.chomp
puts "hello\n".chomp
puts "hello".reverse





























