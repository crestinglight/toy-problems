var testInput01 = 363;
var testInput02 = 364;

function getC(input){

	var remainderHundred = (input % 100);
	var removeRemainder = (input - remainderHundred);
	var numberC = Math.floor(removeRemainder / 100);
	getL(remainderHundred, numberC);
}

function getL(hundredRemainder, numberC){

	var remainderFifty = (hundredRemainder % 50);
	var removeRemainder = (hundredRemainder - remainderFifty);
	var numberL = Math.floor(removeRemainder / 50);
	getX(remainderFifty, numberC, numberL);
}

function getX(fiftyRemainder, numberC, numberL){
	var remainderTen = (fiftyRemainder % 10);
	var removeRemainder = (fiftyRemainder - remainderTen);
	var numberX = Math.floor(removeRemainder / 10);
	getV(remainderTen, numberC, numberL, numberX);
}

function getV(tenRemainder, numberC, numberL, numberX){
	var remainderFive = (tenRemainder % 5);
	var removeRemainder = (tenRemainder - remainderFive);
	var numberV = Math.floor(removeRemainder / 5);
	getI(remainderFive, numberC, numberL, numberX, numberV);
}

function getI(fiveRemainder, numberC, numberL, numberX, numberV){
	var finalString = "C".repeat(numberC) + "L".repeat(numberL) + "X".repeat(numberX) + "V".repeat(numberV) + "I".repeat(fiveRemainder);
	console.log(finalString);
	//console.log(finalString);
}



getC(testInput01);