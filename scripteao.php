<?php
// PHP 
 $name = "Ezekiel Ayoola Oluwafemi <br>";
$email = "easysonofman@gmail.com <br>";
$slack_username = "@ezekielao<br>" ;
$biostack = "Genomics <br>";
$twitter_handle = "@OluwafemiEzeki4<br>";
 
// function to calculate
// Hamming distance
function hammingDist($slack_username, $twitter_handle)
{
    $i = 0; $count = 0;
    while (isset($slack_username[$i]) != '')
    {
        if ($slack_username[$i] != $twitter_handle[$i])
            $count++;
        $i++;
    }
    return $count;
}
 
    
 
    // function call
	echo $name;  
	echo $email;
    echo $slack_username;
	echo $biostack;
	echo $twitter_handle;
    echo hammingDist ($slack_username, $twitter_handle);
     
//
?>
