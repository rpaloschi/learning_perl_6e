#!/usr/bin/perl
## Copyright (C) 2017 by Yours Truly

use POSIX;

my $nine_to_zero = "1234567890";
my @lines;
my $max_len;

print "Enter some lines, then press Ctrl-D:\n"; # or Ctrl-Z
chomp(@lines = <STDIN>);
foreach(@lines) {
	my $current_len = length($_);
	if ($current_len > $max_len) {
		$max_len = $current_len;
	}
}

my $repetitions = 2 + ceil($max_len / length($nine_to_zero));
print($nine_to_zero x $repetitions, "\n");

foreach(@lines) {
	printf "%20s\n", $_;
}
