#!/usr/bin/perl
## Copyright (C) 2017 by Yours Truly

@NAMES = qw(fred betty barney dino wilma pebbles bamm-bamm);
chomp(@indexes = <STDIN>);
foreach $index (@indexes) {
	print @NAMES[$index - 1] . "\n";
}
