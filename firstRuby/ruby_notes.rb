# #Ruby basics notes by Richard Mable
# # print hello world 
# puts "hello world"


# # to declare a variable
# # naming conventions: lowercase to start, underscore for spaces, important for Rails
# my_var = 15
# another_example_with_lots_of_spaces = 25

# # Floats are numbers with decimal points
# # 47.35564

# #  Integers can be Fixnum (a number without a decimal)
# # 2, 2000, 435
# # or a Bignum, very large number
# # 236362163136236325

# # Strings are a line of text stored in quotations
# "This is a string"
# "4 + 5 this is also a string"

# # Symbol, unique to Ruby, a colon followed by some words or a string
# #can set multiple vars to :houses, will only take up one slot in the memory
# h = :houses

# #Booleans (TureClass, FalseClass).  True or False
# b = true



# #Hashes. Similar to arrays, used to store key => value pairs
# myHash = {:jan => "January", :feb => "February"}
# #to access a value
# myHash[:jan]

# # Creates a variable called name, sets it equal to your name, then
# # outputs the variable
# my_name = "Richard"

# puts my_name

# #Array, a collection of data. Can be symbols, strings, hashes, vars, numbers
# ["here", "we", "go", 4, 3, 7, my_name, myHash, :houses]

# # Assigns a new array to a variable called holidays with a list of
# # holidays inside of the array as strings

# holidays = ["Christmas", "Thanksgiving", "Kwanza", "Superbowl Sunday"]
# puts holidays[2]

# # Creates a new hash assigned to a variable called
# # holidays_and_dates - the keys should be a holiday 
# # and the values should be the date it is celebrated, both strings
# # you don't need ":" can put in vars or reference an array, etc

# holidays_and_dates = {:christmas => "December 25", :thanksgiving => "Last Thursday in Nov", :independence => "4th of July"}

# puts holidays_and_dates[:thanksgiving]

# # use gets to accept user input in the terminal
# puts "What is your name?"
# name = gets
# puts name.size
# puts name

# #Difference between symbols and strings: 
# # symbols will always point to the same place in the memory, saving space
# # talk = "hello"
# # hey = "hello"
# # The two vars above will take up 2 different spots in the memory
# # h = :hello
# # hi = :hello
# # The two above will take up 1 spot in the memory.
# # A symbol is immutable. It is impossible to concatenate one symbol to another:
# # :hello << :world will return an error
# # symbols are inherently more efficient

# #Test a condition. Triple equals to test type as well.
# # 2 == 2
# # >true

# # "hello" == "hey"
# # >false

# #Logical statements:
# #don't need parens, don't need curly braces, need "end" to close off block of code.

# if 5 > 10 
# 	puts "This is false"
# end

# if 5 < 10
# 	puts "This is true"
# end

# if 5 > 10 
# 	puts "This statement is false"
# elsif 5 > 10
# 	puts "Yes it is"
# else
# 	puts "Should never get to this message"
# end


# a = 5

# #"and" "or" to check multiple conditions
# a == 5 && a == 6
# a == 5 || a == 6

# #loops: for, while each

# #for loop. This will print out the line 5 times with the number 0-4 place in the var
# #which is denoted in the #{i}. ".." is inclusive of the end number
# #and "..." is exclusive of the end number. 0..4 prints 0, 1, 2, 3, 4, 
# #and 0...4 prints 0, 1, 2, 3
# for i in 0..4
# 	puts "currently on the number #{i} iteration of this loop."
# end

# #loop from 0 to 10, print even numbers

# for i in 0..10
# 	if i%2 == 0
# 		puts i
# 	end
# end

# #use "..." because otherwise the loop will extend outside the array, returning an error
# array = ["this", "is", "an", "array"]
# cars = ["honda", "ford", "chevy", "subaru"]

# for z in 0...array.size
# 	puts array[z]
# end

# #each loop: don't need to know size of array, will just go to the end of array
# cars.each do |cars|
# 	puts cars
# end

# #while loop


# #functions, block code that has a name and can be called later, can take arguments
# #don't need to use return keyword, don't need parens for parameters
# #don't need them for arguments either though it can get confusing depending on names
# def add_two(n)
# 	n + 2
# end

# a = add_two(5)

# puts a

# # exercises for functions

# # Adds ﬁve to argument given 
# def add_five(n)
# 	n + 5
# end

# # Multiplies argument given by 15 
# def mult_fifteen(n)
# 	n * 15
# end

# # Performs a mathematical operation using four integer and/or ﬂoat arguments
# def four_op(a, b, c, d)
# 	(a * b) + (c - d)
# end

# # Prints the argument given four times
# def print_four(text)
# 	for t in 0..3
# 		puts "#{text} number #{t}"
# 	end
# 	#need something to have ruby return when using a function
# 	text
# end

# #Prints an uppercase version of the argument given
# def make_upper(text)
# 	puts text.upcase
# end

# #is it even?
# # def is_even(num)
# # 	(num).round.even

# #calling and printing each function exercise

# puts add_five(5)

# puts mult_fifteen(5)

# puts four_op(5.23, 4.45, 3.21, 2.22222222222)

# puts print_four("hello world")

# puts make_upper("hello good day there")

# # Extra Basic Ruby Exercises

# # 1) create a function that accepts two arguments
# # If the two arguments are integers, return "Numbers!!"
# # If one argument is an integer, return the other argument the number of times of that integer
# # If neither argument is an integer, print out the two other arguments
# # In all other cases ask for the user input and print out what type that user inputed
# # def what_am_i (arg, arg2)
# #     if arg 

# #     arg
# # end

# # 2) create a function that takes a boolean value
# # If that value is true, return any random number
# # otherwise return a randomly selected color sheet (e.g. "blue sheet", "red sheet")
# # def bool_sheet(bool)
    
# # end

# awesomeString = "Hello world"

# #is the string empty?

# awesomeString.empty?
# #should return false

# #how many chars is the string?
# awesomeString.length

# #concatenation: bringing two strings together
# awesomeString = "Hello" + "world"
# puts awesomeString
# #should be Hellworld

# #can do without the plus sign. This only works on same type of data, no mixing
# awesomeString = "Hello" "world"
# puts awesomeString

# #chains: (same result as plus sign or space between)
# awesomeString = "hello" << "class"

# #concat method
# awesomeString = "hello".concat("world")

# #interpolating strings (putting vars or any ruby code inside a string)
# score = 31
# awesomeString = "The score was #{score} to #{score}, which is a tie!"
# puts awesomeString

# #loading specific parts of a string:

# #char at pos 0
# puts awesomeString[0]

# #from pos 0, get 3 chars
# puts awesomeString[0,3]

# #from pos 0 thru position 5 (incl)
# puts awesomeString[0..5]

# #from pos 0 up to pos 5 (exclusive)
# puts awesomeString[0...5]

# #2 from the left, 1 from the right
# puts awesomeString[2..-2]

# #pull out certain words and replace them
# awesomeString = "Hello world"
# awesomeString["world"] = "universe"
# #should print out Hello universe

# #substitution with gsub: yourString.gsub "world", universe (find, replace)
# #can also be used with regular expressions  http://rubular.com/

# #can multiply a number by a string, will print it that many times

# #can insert text like so:
# yourString = "Hello World"
# yourString.insert 1, " to the"
# puts yourString

# #chomp, chop, reverse
# #chomp eliminates the return (/n) function.
# #chop eliminates the last char
# #reverse reverses the order of the string

# puts "hellop".chop
# puts "hellop".chop.chomp
# puts "hello\n".chomp
# puts "hello".reverse


# #Loop through an array of strings, print the first letter of each word
# #(use an each loop). What to do if that string has no length?

# words_array = ["hello", "nice", "sweet", "good", "excellent"]
# words_array.each do |numbers_array|
# 	puts numbers_array[0]
# end

# #Loop through an array of numbers, and sum the numbers together, print the final sum
# #at the end of the loop (use the while loop)
# numbered_array = [123, 124, 1124, 142, 123, 141, 153, 123, 121]
# h = 0
# first_add = 0
# second_add = 0
# last_add = 0
# current_sum = 0

# # use < as to not overrun the length of the array
# #this uses a while loop to store each addition in a var, then adds it to the next index in the array
# #see if you can do it with 2 vars: counter and sum


# while (h < numbered_array.length) do 
# 	first_add = numbered_array[h]
# 	current_sum = first_add + last_add
# 	last_add = current_sum
# 	h += 1
# 	puts "The current sum is #{current_sum}"
# end

# #Loop from 1 to 1000 (inclusive), and print out multiples of 100, and for every multiple of 250
# #print "$250" (use a normal for loop)

# for x in 1..1000
# 	if x % 100 == 0 && x % 250 == 0
# 		puts "#{x} and $250"
# 	elsif x % 100 == 0 
# 		puts x
# 	elsif x % 250 == 0
# 		puts "$250"
# 	end
# end

# #nest a while loop within a for loop, use the first array of strings (in exercise 1), after looping through each word in the array
# #use the while loop to loop through each character in that word and print the 3rd character

# for l in 0...words_array.length
# 	counter 
# 	while counter < word looking at length
# 		if word[3] == ""
# 			puts "No word!"
# 		else
# 			puts word[3]
# 		end
# 	end
# end





# Loop through a paragraph, analyze each item in that paragraph. 
# If you reach a word, reverse the word and put it back in its place, if you reach an integer, replace it with the text version 
# (e.g. 3 becomes 'three'). Output the text at the end.


#Objects: creating a "user" object. All users are not the same, but share the same properties
#Thus we create a new object to model a user and an instance of that object to model a specific user
#Basic object syntax:
#class Dinosaur
#end
#That will create a new class of Dinosaur. Name are always capitalized and singular.
#The initialize method gets called every time a new instance of the object is instantiated, meaning the new method is called on the object
#class Dinosaur
# def initialize
#  puts "ROAR"
#  end
# end
#Dinosaur.new
# => ROAR
#An instance can be stored in a variable and called later on where it will save a spot in the memory.
#my_dino = Dinosaur.new
# => ROAR
#puts my_dino
# => #<Dinosaur:0x007f8b2b485e78>
#An instance of an object has its own traits, which are stored with instance variables, denoted with the @ sign
#class Computer
# def initialize
#  @ram = rand
#  puts @ram
#  end
# end
#Computer.new
# =>0.47742061498410127
#Each time a new instance is created, it is given a new @ram value

#some more examples:
# class Dog
# 	def initialize(name, freindly)
# 		@name = name
# 		@friendly = friendly
# 	end


# class Phone
# 	def initialize
# 		@make = "apple"
# 		@serial = rand
# 		puts @make
# 		puts @serial
# 	end
# end

# class Person
# 	def initialize
# 		@age = rand * 100
# 		@firstname = ""
# 		@lastname = ""
# 		@cape = cape
# 	end

# 	def saveUs
# 		if @cape
# 			puts "he flies, and cape swirls"
# 		end

# end

# Methods:
# A method in a function that relates to a specific object and/or instances of that object
# It is accessed through a specific object. For instance, the User object has a full_name method: user.new.full_name
# Methods can also be created to run on the object (class methods) or on an instance of the object (instance method)
# If expecting true or false response, put a question mark at the end of method. class.method? Something you ask of the entire class as a whole.
# 

class Robot
	#this is a instance method
	def compute
		puts 5 * 5
	end
	#this is a class method
	def self.destroy_humanity
		puts "Laser beams!!!"
	end
	#write/setter attribute
	def color=(color)
		@color= color
	end
	#read/getter attribute
	def color
		@color
	end

	def model=(model)
		@model= model
	end

	def model
		@model
	end
end


class BetterRobot
	def divide
		puts 3 / 8
	end

	def self.say_what
		puts "Hey now, I'm better"
	end
end

#Attributes:
#Has two operations: write and read
#write, or the setter, is used to change a value or write an initial value to the attribute
#read, or the getter, is used to retrieve the value of the attribute 

#To write an attribute, we create a setter method

# class Car
# 	def engine=(engine)
# 		@engine= engine
# 	end
# end

#To read an attribute, we create a getter method

# class Car
# 	def engine
# 		@engine
# 	end
# end

# Ruby also has built in methods for getting and setter: attr_reader :attr_name
# This method creates a readable attribute on an object instance. Functionally equivalent to:
# def attr_name  
#  @attr_name 
# end

# attr_writer :attr_name This method creates a writable attribute on an object instance. Functionally equivalent to:
# def attr_name=(attr_value)  
# 	@attr_name = attr_value 
# end

# attr_accesor :attr_name This method creates a writable and readable attribute on an object instance.
# Functionally equivalent to the last two built in methods.
# You don't want to be able to read and write every attribute, example being bank account numbers as below where one 
# could just change the owner and number of the bank account at will

class Account
	attr_accessor :balance, :owner, :type, :number

	def initialize(owner)
		@balance
		@owner = owner
		@type
		@number = rand
	end
end


class Ship
	attr_accessor :length, :tons
	attr_reader :owner
	

	def initialize(owner, length, tons)
		@owner = owner
		@length = length
		@tons = tons
	end

	def setSail
		puts "Your ship has set sail!"
	end
end


# A constructor is an addition to an initialize method to give a new instance of an object instance variable values from 
# inception rather than an ad-hoc basis.

class Tree
	attr_accessor :type, :height, :color, :width

	def initialize(type="maple", height=54, color="green", width=8)
		@type = type
		@height = height
		@color = color
		@width = width
	end
end


# Object inheritance- a very deep topic. Research further


# class Month

# 	attr_accessor :month, :days

# 	def initialize(month, days)
# 		@month = month
# 		@days = days
# 	end
# end

# class Calendar < Month
# 	attr_accessor :year

# 	def initialize(year)
# 		@year = year
# 	end
# end


class Zoo 
	attr_accessor :exhibits
	def initialize
		@exhibits = []
	end
end

class Animal
	attr_accessor :legs
	def initialize
		@legs = legs
	end
end

class Zerbra < Animal
	attr_accessor :stripes

	def initialize
		@stripes = stripes
	end
end

# The BANG "!" reverses the boolean value

# .nil? checks to see if the referenced item is equal to nil, or nothing

# "unless" the opposite of "if" 

# Recursive methods is a method that calls itself. Make sure you write a way to stop it.  Should have a base case, when you reach 
# the end of something, quit.

a = [1, 2, 3, 4, 5, 6, 7]

def sum(index, a)
	if index+1 -- a.length
		return a[index]
	end
	puts a[index]
	return a[index] + sum(index+1, a)
end













