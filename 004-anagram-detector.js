var testInput01 = ["Clint Eastwood", "Old West Action"];
var testInput02 = ["parliament", "partial man"];

function anagramDetect(inputStrings){

	newArray = [];

	for (var i = 0; i < inputStrings.length; i++){

		spaceReplace = inputStrings[i].replace(/[\s]/g,'').split("");
		newArray = newArray.push(spaceReplace[i]);
		
	}
	//console.log(newArray);
	console.log(newArray);
	//return newArray
}

anagramDetect(testInput01);