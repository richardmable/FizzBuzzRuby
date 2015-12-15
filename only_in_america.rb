# By Richard Mable

# Create a function that takes a string and adds the phrase "Only in America!" to the end of it 
# Define the function murica to print the input with the phrase "Only in America"
def murica(answer)
	#the .chomp gets rid of the "return" function added to the string when enter is pressed
	puts "#{answer.chomp}, Only in America!"
end
#asking user for input and run the function
puts "What makes America great?"
murica(gets)

# Create a function to ﬁnd the maximum value in an array of numbers. For instance:  [100,10,-1000]
# should return 100. Do not use Ruby's built-in  .max  function.

def max_val()
numbers_array = [4135, 2332, 623, 642, 4654, 12453, 12524, 6352, 6, -24124, 643, 87, 42, 5, 35]
bign = 0	
	numbers_array.each do |numbers_array|
		if numbers_array > bign
			bign = numbers_array
		end
	end
	puts "The biggest number in this array is #{bign}"
end
#run the program to find the max
max_val()

# Create a function that takes two arguments - both of them arrays. Inside of the function, 
# combine the arrays using the items from the ﬁrst array as keys and the second array as values. 
# For example, when these two arrays are supplied as arguments:
#   [:toyota, :tesla]   ["Prius", "Model S"]
# they should return a hash like so:
#   {toyota: "Prius", tesla: "Model S"}

#defining the two arrays, bike_brands is the keys and bike_model is the value
bike_brand = [:specialized, :trek, :cannondale, :cervelo, :bmc, :giant]
bike_model = ["S-works Venge VIAS", "Madone 9.9", "Supersix-Evo", "P5", "Teammachine SLR-01", "Propel Advanced SL"]
def two_args(array1, array2)
	dates.zip(array2).map{|k, v|{array1: k, array2: v}}

end

#run the function with the two arrays as arguments
two_args(bike_brand, bike_model)
