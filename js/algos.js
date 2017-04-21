// ------------ RELEASE 0  ----------------
// ---- PSEUDO-CODE
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

// ---- DRIVER CODE
example = ["long phrase","longest phrase","longer phrase"]
console.log("The biggest word is: " + findBiggest(example)) // should print "longest phrase"

// ------------ RELEASE 1  ----------------
// ---- PSEUDO-CODE
// create a function
// make the function recieve two objects
// check if one object shares key-value pair with other
// if at least one key/value pair is the same return true
// keep checking until all key/values have been checked

// ---- RESOURCES USED 
// Object.keys(guy1) // => returns all Keys
// Object.keys(guy1).length // => returns how many keys
// Object.keys(guy1)[0] // => return first[0] key NAME
// guy1[Object.keys(guy1)[0]] // => return first[0] key VALUE

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

// --- OLD DATA ---
// if (person1.name === person2.name) {
// 	share_something = true
// }
// if (person1.age === person2.age) {
// 	share_something = true	
// }

// ------------ RELEASE 2  ----------------

// ---- PSEUDO CODE
// write a function that creates an array
// make the function take an integer for the length of the array
// the function should return an array of that length
// the array should be filled with random words
// the words should have 1 to 10 letters

// ---- IMPORTANT 
// In another file (wordslist.jb) I copied a list of 350k words 
// and added them as an array called <wordslist>
// to make it work, download that file in the same folder as this.
require ('./wordslist.js');


function wordsArray(size) {
	array = []
	for(var i=0; i < size; i++){
	var random_word = "It should be less than 10 characters!"
	while (random_word.length >= 10) {
		random_word = wordslist[Math.floor(Math.random() * 350000)] 
		}; 
	array.push(random_word);
	}
	return array
}
// the variable random_word is useful to make the while condition
// since the sentence is bigger than 10 letters 
// the last push will happen only if the while condition is met

// ---- DRIVER CODE ----
// Loop to do it 10 times
for(var i=0; i < 10; i++) {
    var words_array1 = wordsArray(3);
    console.log("---- Array " + (i+1) + "----");
	console.log(words_array1);
	console.log("The biggest word is: " + findBiggest(words_array1));
	console.log(" ");
}
