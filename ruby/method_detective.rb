# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

"zom".insert(2,"o")
# => “zoom”

"enhance".rjust(11).ljust(15)
# => "    enhance    "

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".insert(9, ' suspects')
#=> "the usual suspects"

" suspects".strip
" suspects".lstrip 
# => "the usual suspects"

"The case of the disappearing last letter".chomp('r')
"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".delete "T"
#The next method works but would need improvement, the '39' depends on string length
"The mystery of the missing first letter".slice(1,39)
#Also, this below
str="The mystery of the missing first letter"
str.slice!(0)
str
# => "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"

"z".codepoints
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

# "How many times does the letter 'a' appear in this string?".<???>
# => 4