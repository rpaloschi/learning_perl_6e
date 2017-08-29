#!/usr/bin/perl
## Copyright (C) 2017 by Yours Truly
use strict;
use warnings FATAL => 'all';

print "Guess a number from 1 to 100\n\n";
print "Choosing a number... done!\n\n";

my $value = int(1 + rand 100);
my $is_debug = $ENV{DEBUG} // 1;

print "DEBUG: Number choosen: $value\n\n" if $is_debug;

while(<>) {
    chomp;

    if (/quit/i or /exit/i) {
        last;
    } elsif (my $current = int($_)) {
        if ($current == $value) {
            print "Congrats! You guessed the number.\n";
            last;
        }
        elsif ($current < $value) {
            print "We are looking for a higher value.\n";
        }
        elsif ($current > $value) {
            print "We are looking for a lower value.\n";
        }
    } else {
        print "Wrong input! Try again.\n";
    }
}

print "Exiting!\n";
