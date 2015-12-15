#program to analyze a heredoc in ruby
#By Richard Mable

# Create a program to analyze a block of text supplied in a heredoc. 
# The program should be encapsulated in a function that returns a hash of results like so:
# {words: 323, spaces: 100, vowels: 1003, consonants: 2232, most_used: "the"}
# Feel free to add more dimensions of analysis to your results.
#look into .scan function write the heredoc in sublime

#empy hash first with 0's
#use regular expressions.  scan the text, then count



def txt_analyzer(HEREDOC)
	words = 
	characters = HEREDOC.size
	spaces = HEREDOC.count " "
	vowels = HEREDOC.count "a", "e", "i", "o", "u"
	consonants = HEREDOC.count ""	


{words: var words, spaces: var spaces, vowels: var vowels, consonants: var consonants, most_used: var most_used)