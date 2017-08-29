#!/usr/bin/perl
## Copyright (C) 2017 by Yours Truly

sub average {
	if (@_ == 0) {
		return 0;
	}

	my $count = 0;
	my $total_value;

	foreach (@_) {
		$total_value += $_;
		$count += 1;
	}

	return $total_value / $count;
}

sub above_average {
	my $avg = average(@_);
	my @result;

	foreach (@_) {
		if ($_ > $avg) {
			push(@result, $_);	
		}
	}

	return @result;
}

my @fred = above_average(1..10); 
print "\@fred is @fred\n"; 
print "(Should be 6 7 8 9 10)\n"; 
my @barney = above_average(100, 1..10); 
print "\@barney is @barney\n"; 
print "(Should be just 100)\n";
