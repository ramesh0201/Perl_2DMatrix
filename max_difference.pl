use strict;
use warnings;

my @array = (4,2,5,2,1,3,2,3);
my $num1;
my $num2;
my $diff;
$num1 = $array[0];
$num2 = $array[1];
$diff = $num2 - $num1;

for(my $i=2; $i<scalar(@array); $i++)
{
	($num1,$num2) = ($array[$i] < $num1) ? ($array[$i],$array[$i+1]) : ($num1,$num2);
	$num2 = ($array[$i] > $num2) ? ($array[$i]) : $num2;
	$diff = (($num2 - $num1) > $diff) ? ($num2 - $num1) : $diff;
}

print "The max difference is : $diff \n";
print "The number1 is : $num1 \n";
print "The number2 is : $num2 \n";