#!/usr/bin/perl
## Copyright (C) 2017 by Yours Truly

use 5.010;

sub greet_seen {
	state @previous;
	my $name = shift;

	if (@previous) {
		print "Hi $name! I've seen: @previous\n";
	} else {
		print "Hi $name! You are the first one here!\n";
	}

	push(@previous, $name);
}

greet_seen("Fred");
greet_seen("Barney");
greet_seen("Wilma");
