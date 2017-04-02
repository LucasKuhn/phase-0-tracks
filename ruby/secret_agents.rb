def encrypt (str)
  #Start a counter 
  count = 0
  #while the counter is smaller than the size of the String
  while count < str.length
    #Check if it is a space, and just skip it
    if str[count] == " "
    count +=1
    #Check if the letter is a Z, and turn it into an A
    elsif str[count] == "z"
    str[count] = "a"
    count +=1
    #all other situations, turn the letter into the next one
    else 
    str[count] = str[count].next!
    count +=1
    end
  end
  str
end

#We create a reverse method to be the oposite of .next  
def reverse(letter)
  place = "abcdefghijklmnopqrstuvwxyz".index(letter)
  "abcdefghijklmnopqrstuvwxyz"[place-1]
end

def decrypt (str)
  #Start a counter 
  count = 0
  #while the counter is smaller than the size of the String
  while count < str.length
    #Check if it is a space, and just skip it
    if str[count] == " "
    count +=1
    #Check if the letter is an A, and turn it into a Z
    elsif str[count] == "a"
    str[count] = "z"
    count +=1
    #all other situations, turn the letter into the one before it 
    #using the reverse method we created above
    else 
    str[count] = reverse(str[count])
    count +=1
    end
  end
  str
end

#OBS (Release 4): Since the methods above dont print and just return a value, you can use them
#nested inside one another, like the example below 
p decrypt(encrypt("swordfish"))


#DRIVER CODE BELOW 

puts "Do you want to encrypt or decrypt a password?"
choice = gets.chomp
puts "What is the password?"
password = gets.chomp
if choice == "encrypt"
  p encrypt("#{password}")
elsif choice == "decrypt"
  p decrypt("#{password}")
else
  puts "invalid input"
end

#KNOWN LIMITATIONS: The code only works with letters, not numbers or symbols, since in this version, the reverse method uses only the alphabet as it's scope.