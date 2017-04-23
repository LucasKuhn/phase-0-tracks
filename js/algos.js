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
	var keys = Object.keys(person1)
	var share_something = false 
	for (i=0; i < Object.keys(person1).length; i++){
		if (person1[keys[i]] === person2[keys[i]]) {
			share_something = true
		}
	}
	return share_something
}

// ---- TEST CODE
var steven = {name: "Steven", age: 54};
var tamir = {age: 54, name: "Tamir"};
var lucas = {favorite_color: "blue", name: "Lucas", age: 23};
console.log("steven and tamir have something similar?")
console.log(somethingSimilar(steven,tamir)); // Should print TRUE
console.log("lucas and steven have something similar?")
console.log(somethingSimilar(lucas,steven)); // Should print FALSE

// --- OLD DATA ---
// if (person1.name === person2.name) {
// 	share_something = true
// }
// if (person1.age === person2.age) {
// 	share_something = true	
// }
// if (person1[Object.keys(person1)[key_index]] === person2[Object.keys(person2)[key_index]])

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

function realWords(array_size) {
	array = []
	for(var i=0; i < array_size; i++){
	var random_word = "It should be less than 10 characters!"
	while (random_word.length >= 10) {
		random_word = wordslist[Math.floor(Math.random() * 350000)] 
		}
	array.push(random_word);
	}
	return array
}
// the last push will happen only if the while condition is met,
// so it will only take words with less than 10 length

// -- UPDATE : Added a proper function to create words
function fakeWords(array_size) {
  array = [];
  alphabet = "abcdefghijklmnopqrstuvwxyz";
  for(var i=0; i < array_size; i++){
    new_word = "";
    var word_size = (Math.floor(Math.random()*10)+1) // It will be between 1 and 10
    for(var j=0; j < word_size; j++){
    	  random_letter_value = (Math.random() * alphabet.length) // It will be between 1 and 26
    	  new_word += alphabet.charAt(random_letter_value) // Add the corresponding letter on the alphabet to the word
        }
    array.push(new_word);
  }
  return array;
}

// ---- DRIVER CODE ----
// Loop to do 2 real words array (Just for testing)
for(var i=0; i < 10; i++) {
    var words_array1 = realWords(3);
    console.log("---- Real Words Array " + (i+1) + "----");
	console.log(words_array1);
	console.log("The biggest word is: " + findBiggest(words_array1));
	console.log(" ");
}

// Loop to do 10 fake words array (The Proper Idea of the Challenge)
for(var i=0; i < 10; i++) {
    var words_array2 = fakeWords(3);
    console.log("---- Fake Words Array " + (i+1) + "----");
	console.log(words_array2);
	console.log("The biggest word is: " + findBiggest(words_array2));
	console.log(" ");
}