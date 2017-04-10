def next_vowel (letter) 
  place = "aeiou".index(letter)
  letter = "aeioua"[place+1]
end
def next_upcase_vowel (letter)
  place = "AEIOU".index(letter)
  letter = "AEIOUA"[place+1]
end
def next_consonant (letter)
  place = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ".index(letter)
  letter = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZB"[place+1]
end

# --- DRIVER CODE --- #
puts "Say a name and get a fake one!"
names = {
  original_name: [],
  new_name: []
}
name = gets.chomp
count = 0
while name != 'quit'
  newname = name.split(' ')
  newname[0],newname[1]=newname[1],newname[0]
  newname = newname.join(' ')
  newname = newname.split('')
  newname.map! { |letter|
    # Enumerable#any:Returns true if anything from inside   the parentesis is true according to the expression   (in this case, letter.include?)
    if %w(a e i o u).any? {|s| letter.include?   s}
      letter = next_vowel(letter)
    elsif %w(A E I O U).any? {|s| letter  .include? s}
      letter = next_upcase_vowel(letter) 
    elsif letter == ' '
      letter = letter
    elsif letter == 'z'
      letter = 'b'
    else
      letter = next_consonant(letter)
    end
  }
  newname = newname.join('')
  names[:original_name].push(name)
  names[:new_name].push(newname)
  puts "Fake name: #{newname}"
  count += 1
  puts "Say a name and get a fake one!(quit to exit)"
  name = gets.chomp
end

# I wanted to do the code below using each, but in the end I gave up and added a count to achieve the same results

x=0 
count.times do
puts "#{names[:original_name][x]} is also known as #{names[:new_name][x]}"
  x+=1
end
