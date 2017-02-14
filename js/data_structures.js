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

