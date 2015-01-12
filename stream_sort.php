<?php
//large array numeric
$test=array(2,3,4,1,1,2,2,2,2,2,2,1,1,1,1);
$count=0;
$bad_count=0;
$answer=$test[0];
$value_counter=0;
foreach($test as $key=>$value){
                    
        //echo $value_counter."\n";
        if($answer==$value){
                $value_counter+=1;
        }
        else{
            $bad_count+=1;
            print "bad count is $bad_count ($value) leader is $value_counter ($answer)\n";
            if($bad_count >= $value_counter){
                $value_counter=1;
                $answer=$value; 
                $bad_count=0;
                }
        }


}
echo $answer;

