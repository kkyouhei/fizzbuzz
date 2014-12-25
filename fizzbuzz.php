<?php
#echo "start : " . microtime(true) . "\n";
#for($i=0 ; $i<=1000000 ; $i++){
#  $test .= $i . "\n";
#}
#echo $test;
#echo "end : " . microtime(true) . "\n";

class Sample{
  public static function test($idx){
    if(1 > $idx){
      return $idx;
    }else{
      echo $idx . "\n";
      $idx--;
      self::test($idx);
    }
  }
}
echo "start : " . microtime(true) . "\n";
Sample::test(1000000);
echo "end : " . microtime(true) . "\n";
