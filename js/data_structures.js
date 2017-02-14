var colors = ["blue", "red", "aurora green", "silver sparkles"];
var names = ["Ed", "Stella", "Roger", "Daphne"];

colors.push("Raspberry ombre");
names.push("Freya");
console.log(colors);
console.log(names);

var stable = [];
var length = names.length;
var horse = {name: '', color: ''};

for (var i = 0; i <= length; i += 1) {
	horse = {Name: names[i], Color: colors[i]};
	console.log(horse)
}

Constructor Function for Car

function Car(model, make, year, nitrous) {
	this.model = model;
	this.make = make;
	this.year = year;
	this.nitrous = nitrous;

	this.nitro = function() { 
		if (this.nitrous == true) {console.log("This car has nitro.")
			console.log("INITIALIZING NITRO.")
		}	else {console.log("No Boost Available")}
	}
	
	console.log('This is our new car:', this);
}

// Driver Code 
console.log("Let's build a car ...");

var minivan = new Car("Mazda", "MPV", 1994, true);
minivan.nitro();
console.log("CAR INITIALIZATION COMPLETE");