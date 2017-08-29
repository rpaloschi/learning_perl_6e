#!/usr/bin/perl
## Copyright (C) 2017 by Yours Truly
use strict;
use warnings FATAL => 'all';

$^I = ".out";

while(<>) {
    chomp;
    s/Fred/\n/ig;
    s/Wilma/Fred/ig;
    s/\n/Wilma/ig;
    print "$_\n";
}
