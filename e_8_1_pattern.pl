#!/usr/bin/perl
## Copyright (C) 2017 by Yours Truly
use strict;
use warnings FATAL => 'all';

while (<>) {
    chomp;
    if (/match/) {
        print "Matched: |$`<$&>$'|\n";
    } else {
        print "No match: |$_|\n";
    }
}
