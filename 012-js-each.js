var arrayFruits = [
	{classification: "fruit", food:"apple"},
	{classification: "fruit", food:"orange"},
	{classification: "vegetable", food:"cauliflower"},
	{classification: "fruit", food:"banana"},
	{classification: "vegetable", food:"carrots"},
	{classification: "vegetable", food:"broccoli"}
];


function each(arrayFoods, fewd){
	
	for(var i=0; i < arrayFoods.length; i++){

		if(arrayFoods[i].classification === "fruit"){
			console.log("I can't eat " + arrayFoods[i].food + ".");
		}
		else {
			console.log("I can eat " + arrayFoods[i].food + "!");
		}
	}
	
}

each(arrayFruits, function(n){
	console.log(n);
});