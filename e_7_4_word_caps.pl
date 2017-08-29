#!/usr/bin/perl
## Copyright (C) 2017 by Yours Truly

use strict;
use warnings;

my $filename = "e_7_names.txt";

open(my $fh, $filename) or die "Unable to open file $filename $!";

while ($_ = <$fh>) {
	if (/[A..Z][a..z]*/) {
		print("Name match: $_\n");
	}
}

