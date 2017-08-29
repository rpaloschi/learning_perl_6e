#!/usr/bin/perl
## Copyright (C) 2017 by Yours Truly

my %words;

printf "Enter some words, one per line, then press Ctrl-D:\n"; # or Ctrl-Z
chomp(@lines = <STDIN>);
foreach(@lines) {
	$words{$_} += 1;
}

@sorted_keys = sort keys %words;
foreach(@sorted_keys) {
	printf "%s: %d times\n", $_, $words{$_};
}
