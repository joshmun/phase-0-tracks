console.log("Hello world");

var photo = document.getElementById("trees");
photo.style.border = "3px dotted green";

var button = document.getElementsByTagName("button");
console.log(button[0]); 


function disappear() {
  photo.style.display = "none";
}

function ReAppear () {
  photo.style.display = "";
}

button[0].addEventListener("click", disappear);

button[1].addEventListener("click", ReAppear);