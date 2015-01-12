<?php
/*Palindromic numbers: 110011 
the largest palindromic product of any two digit numbers is  91*99= 9009
find the largest palindromic product of any three digit numbers
*/
$test=9009;
$result=isPalindrome($test);
//print $result;
function isPalindrome($number){
  if($number==strrev($number)){
  	return 1;
  }
  else{
  	return 0;
  }
}
$start=100;
$end=999;
$used_numbers=array();
$max_sum=0;

for($i=999;$i>=$start;$i--){
	for($k=$i;$k>=$start;$k--){
		$product=$k*$i;
		if($product > $max_sum){
			if(isPalindrome($product)==1){
				print "$k * $i = $product\n";
				$max_sum=$product;				
			}
		}
	}
}
print "$max_sum";

function fib($number){
    if($number==0) {
        return 0;
    }
    elseif($number==1) {
        return 1;
    }
    else{
        return fib($number-1)+fib($number-2);
    }
}

