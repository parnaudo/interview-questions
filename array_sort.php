<?php 
function pig_translate($string,$capitalize_flag){
	//print "starting with $string\n";
	$string=strtolower($string);
	$start=substr($string, 0,1);
	$length=strlen($string);
	$final_string=substr($string,1,$length);
	$piglatin_addition="ay";
	$start_pig=$start.$piglatin_addition;
	$product=$final_string.$start_pig;
	if($capitalize_flag==1){
		return ucfirst($product);
	}
	else{
		return $product;
	}
}
$sentence="Hello";
$test_array=array("hello","hello world","Hello World");
//$test_array=array("Hello World");
foreach($test_array as $test){
	create_pig_sentence($test);
}
function create_pig_sentence($sentence){
	$array=explode(" ",$sentence);
	foreach($array as $word){
		if(isPartUppercase($word)==TRUE){
			$new_sentence.=" ".pig_translate($word,1);
		}
		else{
			$new_sentence.=" ".pig_translate($word,0);
		}
	}	
	print "$new_sentence \n";
}
function isPartUppercase($string) {
	if(preg_match("/[A-Z]/", $string)===0) {
		return false;
	}
	return true;
}
$fruits= array("apple", "orange", "apple", "banana", "banana", "fruit", "apple");
$no_duplicates=array();
foreach($fruits as $value){
	if(isset($no_duplicates[$value])){
		
	}
	else{
		$no_duplicates[$value]=$value;
	}
	
//	$no_duplicates[$value]=$key;
}
foreach($no_duplicates as $value){
	echo $value;
}


?>
 