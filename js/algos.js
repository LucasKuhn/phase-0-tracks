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

// ---- TEST CODE 
example = ["long phrase","longest phrase","longer phrase"]
console.log(findBiggest(example))

// ---- RELEASE 1 PSEUDO-CODE
// create a function
// make the function recieve two objects
// check if one object shares key-value pair with other
// for every key-value pair of object1, compare it to first
// key-value of object2. Then to it to second key-value pair, 
// and so on until the end of the object.

function somethingSimilar(person1,person2) {
	var share_something = false 
	for (key_index=0; key_index < Object.keys(person1).length; key_index++){
		if (person1[Object.keys(person1)[key_index]] === person2[Object.keys(person2)[key_index]])
		share_something = true
	}
	return share_something
}

// ---- TEST CODE
var steven = {name: "Steven", age: 54}
var tamir = {name: "Tamir", age: 54}
var lucas = {name: "Lucas", age: 23}
console.log(somethingSimilar(steven,tamir)); // Should print TRUE
console.log(somethingSimilar(steven,lucas)); // Should print FALSE

// ---- RESOURCES USED
// Object.keys(guy1) // => Check Keys
// Object.keys(guy1).length // => Check how many keys
// Object.keys(guy1)[1] // => return first key NAME
// guy1[Object.keys(guy1)[1]] // => return first key VALUE

// --- OLD DATA ---
// if (person1.name === person2.name) {
// 	share_something = true
// }
// if (person1.age === person2.age) {
// 	share_something = true	
// }
