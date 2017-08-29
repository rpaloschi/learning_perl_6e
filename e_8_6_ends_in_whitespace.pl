#!/usr/bin/perl
## Copyright (C) 2017 by Yours Truly
use strict;
use warnings FATAL => 'all';

while (<>) {
    chomp;
    if (/\s\z/) {
        print "Ends in whitespace: $`%\n";
    } else {
        print "Doesn't end in whitespace: |$_|\n";
    }
}
