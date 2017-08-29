#!/usr/bin/perl
## Copyright (C) 2017 by Yours Truly
use strict;
use warnings FATAL => 'all';

while (<>) {
    chomp;
    if (/(?<word>\w*a)\z/) {
        print "\$word contains : '$+{word}'\n";
    } else {
        print "No match: |$_|\n";
    }
}
