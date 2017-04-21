// ---- RELEASE 0 PSEUDO-CODE
// create a function
// make the function recieve an array of words
// create a variable for the biggest word
// search through every word of the array given
// compare it to the biggest word so far, update if bigger
// return the biggest word

function findBiggest(word_arr) {
	var biggest_word = word_arr[0]
	for (var i=0 ; i < word_arr.length ; i++) {
		if (word_arr[i].length >= biggest_word.length) {
			biggest_word = word_arr[i]
		}
	}
	return biggest_word
}

example = ["long phrase","longest phrase","longer phrase"]
console.log(example)
console.log(findBiggest(example))
// console.log(example.length)
// console.log(example[1].length)
