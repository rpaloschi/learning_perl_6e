#!/usr/bin/perl
## Copyright (C) 2017 by Yours Truly

use 5.010001;

use strict;
use warnings;

print "Divisibles\n\n";
print "Divisible by 3 = Fizz\n";
print "Divisible by 5 = Bin\n";
print "Divisible by 7 = Sausage\n\n";

while(1) {
    print "Enter the number: ";
    $_ = <>;
    chomp;

    given ($_) {
        when (!/\A\d+\Z/) {
            print "Wrong input! Exiting!\n\n";
            last;
        }
        when ($_ % 3 == 0) {
            print "Fizz ";
            continue;
        }
        when ($_ % 5 == 0) {
            print "Bin ";
            continue;
        }
        when ($_ % 7 == 0) {
            print "Sausage";
        }
    }

    print "\n";
}

