#!/usr/bin/perl
## Copyright (C) 2017 by Yours Truly

use 5.010;

sub greet {
	state $previous;
	my $name = @_[0];

	if ($previous) {
		print "Hi $name! $previous is also here!\n";
	} else {
		print "Hi $name! You are the first one here!\n";
	}

	$previous = $name;
}

greet("Fred");
greet("Barney");
greet("Wilma");
