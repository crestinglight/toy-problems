var string01 = "two drums and a cymbal fall off a cliff";
var string02 = "i have no idea what it is i am doing dummy";

function disemvowel(testString){
    var spaceArray = testString.split(" ");
    var spaceString = spaceArray.join('');
    var aArray = spaceString.split("a");
    var aString = aArray.join('');
    var eArray = aString.split("e");
    var eString = eArray.join('');
    var iArray = eString.split("i");
    var iString = iArray.join('');
    var oArray = iString.split("o");
    var oString = oArray.join('');
    var uArray = oString.split("u");
    var uString = uArray.join('');
    console.log(uString);
    return uString;
}

disemvowel(string01);
disemvowel(string02);