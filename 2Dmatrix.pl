use strict;
use warnings;

my @twoDarray = ((1,2,3),(5,4,6),(7,8,9));
my $i;
my $n;
my $twoDsum;
my $arrlen;
$n=3;
$arrlen = scalar(@twoDarray);

for($i=0;$i<scalar(@twoDarray);$i++)
{
print "$twoDarray[$i] \n";
}

$twoDsum = &recurse_twoD_sum(8,$arrlen,@twoDarray);
print "The sum is $twoDsum";

sub recurse_twoD_sum
{
	my ($curpos,$arraylen,@myarray) = @_;
	my $value1;
	my $value2;
	my $retval;
	print "cur position $curpos : $myarray[$curpos] \n";
	if($curpos >= 0)
	{
		$value1=0;
		$value2=0;
		if(($curpos) % 3 != 0)
		{
			$value1=$myarray[$curpos]+&recurse_twoD_sum($curpos-1,$arraylen,@myarray);
			print "Value1 is $value1";
		}
		if($curpos-3>=0)
		{
			$value2=$myarray[$curpos]+&recurse_twoD_sum($curpos-3,$arraylen,@myarray);
			print "Value2 is $value2";
		}
		print "cur position : $myarray[$curpos] \n";
		$retval=$value1>$value2?$value1:$value2;
		print "$retval \n";
		$retval;
	}
}
