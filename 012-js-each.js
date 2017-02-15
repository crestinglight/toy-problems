var arrayFruits = [
	{classification: "fruit", food:"apple"},
	{classification: "fruit", food:"orange"},
	{classification: "vegetable", food:"cauliflower"},
	{classification: "fruit", food:"banana"},
	{classification: "vegetable", food:"carrots"},
	{classification: "vegetable", food:"broccoli"}
];

var yesEat = [];
var noEat = [];
arrayFruits.forEach(function(fewd){
	
	if(fewd.classification === "fruit"){
		console.log("I can't eat " + fewd.food + ".");
		noEat.push(fewd.food);
	}
	else {
		console.log("I can eat " + fewd.food + "!");
		yesEat.push(fewd.food);
	}
	return {
		yesEat: yesEat,
		noEat: noEat
	};
});


console.log("Foods I can eat: " + yesEat);
console.log("Foods I can't eat: " + noEat);