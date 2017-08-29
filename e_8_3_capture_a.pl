#!/usr/bin/perl
## Copyright (C) 2017 by Yours Truly
use strict;
use warnings FATAL => 'all';

while (<>) {
    chomp;
    if (/(\w*a)\z/) {
        print "\$1 contains : '$1'\n";
    } else {
        print "No match: |$_|\n";
    }
}
