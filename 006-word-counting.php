<?php

global $testInput01;
$testInput01 = "It is rather for us, the living, we here be dedicated to the great task remaining before us.";

function printTest() {
	
	
	$testArray = explode(" ", $testInput01);
	print $testArray[6];
	
}
printTest();

?>