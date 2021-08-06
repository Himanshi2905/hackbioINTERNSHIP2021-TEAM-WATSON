<?php
/******************************************************************************

Welcome to GDB Online.
GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
C#, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
Code, Compile, Run and Debug online from anywhere in world.

*******************************************************************************/

$name = "Saran D";
echo"$name\n";
$email = "d.saranbala96@gmail.com";
echo "$email\n";
$slackusername = "SaranD84519094";
echo "$slackusername\n";
$biostack = "vaccine informatics\n" ;
print "$biostack";
$twitterhandle = "@SaranD84519094\n";
echo "$twitterhandle";

// function to calculate
// hamming distance
function hammingDist($slackusername, $twitterhandle)
{
    $i=0; $count = 0;
    while (isset($slackusername[$i]) !='')
    {
        if ($slackusername[$i] != $twitterhandle[$i])
        $count++;
        $i++;
    }
    return $count;
}


// Driver Code
echo hammingDist($slackusername, $twitterhandle);

//
?>



