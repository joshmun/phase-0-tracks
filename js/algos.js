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
var long = 0;

function Phrase_Finder(phrases) {
	for (var i = 0; i < phrases.length; i += 1) {
		// console.log("I am phrases.length:" + phrases.length);
		var current_phrase = phrases[i];
		// console.log("I am current_phrase.length:" + current_phrase.length);
		var current_phrase_length = current_phrase.length;
		if (long < current_phrase_length) {
		var longest_phrase = current_phrase;
		long = current_phrase_length;
		}
	}
console.log(longest_phrase);
}

Phrase_Finder(phrase);
Phrase_Finder(kierkegaard);
Phrase_Finder(TS_Eliot);