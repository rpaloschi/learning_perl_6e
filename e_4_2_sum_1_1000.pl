#!/usr/bin/perl
## Copyright (C) 2017 by Yours Truly

sub total {
	my $sum = 0;
	foreach(@_) {
		$sum += $_;
	}

	return $sum;
}

print "The total is ", total(1..1000), ".\n"; 
