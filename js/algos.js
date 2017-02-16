// Pseudocode

// - declare length = 0
// - Phrase_finder function takes an input.
// - this input is the phrases array
// - need a for loop, i represents elements in that array
// - need to store .length of i in another variable, current_phrase_length
// - if length < current_phrase_length, then store i as new variable, longest_phrase
// 	- and store current_phrase_length as length
// - return longest_phrase

var phrase = ["long phrase","longest phrase","longer phrase"];
var kierkegaard = ["Fear and Trembling", "Either/Or", "The Sickness Unto Death", "Works of Love", "Concluding Unscientific Postscript"];
var TS_Eliot = ["The Waste Land", "Tradition and the Individual Talent", "Murder in the Cathedral"];
var sk = {name: "Soren", profession: "Philosopher"};
var eliot = {name: "Thomas", profession: "Poet"};
var mayer = {name: "John", profession: "Musician"};
var jm = {name: "Josh", profession: "Philosopher"};

function Phrase_Finder(phrases) {
	for (var i = 0; i < phrases.length; i += 1) {
		var long = 0;
		// console.log("I am phrases.length:" + phrases.length);
		var current_phrase = phrases[i];
		// console.log("I am current_phrase.length:" + current_phrase.length);
		var current_phrase_length = current_phrase.length;
		if (long < current_phrase_length) {
		var longest_phrase = current_phrase;
		long = current_phrase_length;
		}
	}
return longest_phrase;
}

// Pseudocode
// - create a function with two parameters, comparing two hashes
// - use Object.keys(hash) to grab the names of the keys in an array
// - can use for loop, i to iterate through each of the keys
// - store this key in the comparison_key
// - then use Object.values(hash) for the values,
// - use the same for loop, use the same i to iterate through each of the values
// - story this value in the comparison_value
// - need to now break into 2
// 	- check if comparison_key matches matches the current key
// 	- check if comparison_value matches current_value
// 	- if either of these is true, return and print true!

function Match(hash1, hash2) {
	var h1keys = Object.keys(hash1);
	var h2keys = Object.keys(hash2);
	var h1values = Object.values(hash1);
	var h2values = Object.values(hash2);
		for (var i = 0; i <= h1keys.length - 1; i += 1) {
		var keys_match = h1keys[i] == h2keys[i];
		var values_match = h1values[i] == h2values[i];
			if (keys_match == true && values_match == true) {
				var full_match = true;
			}	else {
				var full_match = false;
			}
		}
	return full_match;
}

// Random Test Data Generator

function Generate_Random_TD(integer) {
	var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
	this.random_ARY = [];
	var random_string = "";
	var loop = 1;
	var random_number = 0;

	// this.random = function() {
		while (loop <= integer) {
			do {
				random_number = Math.floor(Math.random() * 10);
			} while (random_number == 0);
		// console.log("I am random number:" + random_number);
			for (j = 0; j <= random_number - 1; j += 1) { // loops how many characters go into a single random string
				var random_poss_number = Math.floor(Math.random() * possible.length);
				random_string += possible.charAt(random_poss_number);
			}
		this.random_ARY.push(random_string);
		random_string = "";
		loop += 1;
		}
	// console.log(this.random_ARY);
	return this.random_ARY;
	// }
}

// Driver Code
console.log(Phrase_Finder(phrase));

console.log(Phrase_Finder(kierkegaard));
console.log(Phrase_Finder(TS_Eliot));

console.log(Match(sk, jm))
console.log(Match(sk, mayer))

var counter = 1
do {
console.log(Phrase_Finder(Generate_Random_TD(5)));
counter += 1;
} while (counter <= 10);