#!/usr/bin/perl
## Copyright (C) 2017 by Yours Truly

use 5.010001;

use strict;
use warnings;

print "Guess a number from 1 to 100\n\n";
print "Choosing a number... done!\n\n";

my $value = int(1 + rand 100);

while(<STDIN>) {
    chomp;

    given ($_) {

        when (/quit/i or /exit/i) {
            last;
        }
        when ($_ == $value) {
            print "Congrats! You guessed the number.\n";
            last;
        }
        when ($_ < $value) {
            print "We are looking for a higher value.\n";
        }
        when ($_ > $value) {
            print "We are looking for a lower value.\n";
        }
        default {
            print "Wrong input! Try again.\n";
        }
    }
}

print "Exiting!\n";
