// Pseudocode

/*

- declare a string variable for "hello"
- declare a string variable as "" <-- we'll add to this final string

- grab the length of the hello string
- for each letter in hello, starting with the total length, print the last letter
- then increment by -1
- return and print

*/
var reversed = ("");

function reverseString(word) {
	var length = word.length;
		for (var i = length; i >= 0; i -=1) {
			var letter = (word[i]);
			reversed += letter;
		}
 console.log(reversed);
}

// Driver Code
reverseString("hello");

if (1 == 1) {
	console.log(reversed);
}