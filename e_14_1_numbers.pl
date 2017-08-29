#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

my @values;
push @values, split while <>;

for (sort { $a <=> $b } @values) {
    printf "%20g\n", $_;
}
