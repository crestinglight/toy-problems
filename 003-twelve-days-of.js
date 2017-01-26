var lyrics = ["a Partridge in a pear tree", "two Turtle Doves", "three French Hens", "four Calling Birds", "five Golden Rings", "six Geese a Laying", "seven Swans a Swimming", "eight Maids a Milking", "nine Ladies Dancing", "ten Lords a Leaping", "eleven Pipers Piping", "twelve Drummers Drumming"];
var whichDay = ["first", "second", "third", "fourth", "fifth", "sixth", "seventh", "eighth", "ninth", "tenth", "eleventh", "twelth"];


function twelveDays(days, lyricsInput){
	var whichDayLength = days.length;

	for(var day = 0; day < whichDayLength; day++){
		
			console.log("On the " + whichDay[day] + " day of Christmas," +'\n'+ "my true love gave to me:");

		for(var x = day; x >= 0; x--){

			if (day > 0 && x == 0){

				console.log("and " + lyrics[x]);
			}

			else {

				console.log(lyrics[x]);
			}
		}
	}	
}

twelveDays(whichDay);