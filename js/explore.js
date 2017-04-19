// ---- PSEUDO CODE 
// Create a Funcion that recieves a string
// Iterate through every letter in the
// reverse order - start from the last one
// and go until the first one
// make the function add the letters
// to a new string as they are being read
// and in the end print the now reversed string


function reverse(string) {
	reversed_string = ''
	// added <string.length - 1> because of the [0] index
	for (var i = string.length-1; i>=0 ; i--) {
		reversed_string += string[i]
	}
	return reversed_string
}

// This below works because <reversed_string> is
// set to the last string that was reversed
reverse("hello");
console.log(reversed_string);

// But it is better to save it as a new variable
var reversed_swear_word = reverse("something")
console.log(reversed_swear_word);

console.log("type a word and I will print the reverse!")
// I don't know how to make a gets.chomp equivalent yet, 
// so type a word below! (Try "abba" :P)
var word = "TYPE A WORD HERE"
if (word === reverse(word)) {
	console.log("That's a palindrome!");
}
else {
	console.log(reverse(word));
}