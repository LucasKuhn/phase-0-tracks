/ Take a spy name
do the following 
-Swap first and last name
-Change all vowels (aeiou) to the 
next vowel in 'aeiou'
-all consonants to the next consonant
/



name = "Lucas Kuhn"
name.class #check the class
newname = name.split(' ')
newname[0],newname[1]=newname[1],newname[0]
newname = newname.join(' ')

