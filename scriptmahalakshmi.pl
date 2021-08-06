#!/usr/bin/perl
use strict;  
use warnings; 

my $name = "Mahalakshmi R";
print "$name\n";
my $emailid = "mahalakshmir11012001\@gmail.com";
print "$emailid\n";
my $slackusername = "\@Mahalakshmi";
print "$slackusername\n";
my $biostack = "Genomics";
print "$biostack\n";
my $twitterhandle = "\@Mahalak5hm1";
print "$twitterhandle\n";

use feature 'say';
use List::Util qw( min );

sub editDistance{
    my ($str1, $str2, $m, $n) =  @_;

    return $n if $m == 0;
    return $m if $n == 0;

    return editDistance($str1, $str2, $m-1, $n-1)
    if substr($str1, $m, 1) eq substr($str2, $n, 1);

    return 1 + min ( editDistance($str1, $str2, $m, $n-1), #insert
             editDistance($str1, $str2, $m-1, $n), #remove
             editDistance($str1, $str2, $m-1, $n-1) ); #replace
}

my $str1 = "\@Mahalakshmi";
my $str2 = "\@Mahalak5hm1";

say editDistance($str1, $str2, length($str1), length($str2));
