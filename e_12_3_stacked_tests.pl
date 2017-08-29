#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

print "Stacked tests\n\n";

for(@ARGV) {
    chomp;

    if (-w -r -o $_) {
        print "The file '$_' is readable, writable and owned by you!\n";
    }
}

