#!/usr/bin/perl
## Copyright (C) 2017 by Yours Truly

use strict;
use warnings;

my %words;
my $max_length;

my @sorted_keys = sort keys %ENV;

foreach(@sorted_keys) {
    if (length($_) > $max_length) {
        $max_length = length($_);
    }
}

foreach(@sorted_keys) {
    printf "%-${max_length}s: %s\n", $_, $ENV{$_} // "(undefined value)";
}
