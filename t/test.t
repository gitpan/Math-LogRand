
BEGIN { $| = 1; print "1..101\n"; }
END {print "not ok 1\n" unless $loaded;}
use Math::LogRand;
$loaded = 1;
print "ok 1\n";

my %test;
my $min = 0;
my $max = 99;

for (1..100){
	my $i = LogRand($min,$max);
	if ($i > $max or $i < $min){
		print "not ";
	}
	print "ok ".(++$t)."\n";
}


