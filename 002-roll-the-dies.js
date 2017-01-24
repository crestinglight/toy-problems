var testString = "6d9";
var testString02 = "103d56";
var newArray = [];

function diceRoll(ndm){
    
    var ndmArray = ndm.split("d");
    console.log(ndmArray);
    
    for (var i = 0; i < ndmArray[0]; i++){
        
        newArray.push(Math.ceil(Math.random()*ndmArray[1]));
        
    }
    
    return newArray;
}

diceRoll(testString);
diceRoll(testString02);
console.log(newArray);