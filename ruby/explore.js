// ---- PSEUDO CODE 
// Create a Funcion that recieves a string
// Iterate through every letter in the
// reverse order - start from the last one
// and go until the first one
// make the function add the letters
// to a new string as they are being read
// and in the end print the now reversed string

reversed = ''
function reverse(string) {
	console.log("Entering Function");
	// added <string.length - 1> because of the [0] index
	for (var i = string.length-1; i>=0 ; i--) {
		console.log(string[i]);
		reversed += string[i]
	}
	return reversed
}

example = reverse("hello");
console.log(reversed);
console.log(example);