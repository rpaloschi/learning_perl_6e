#!/usr/bin/perl

use 5.010001;

use strict;
use warnings;

print "Divisors\n";

while (1) {
    print "Enter the number to get the divisors: ";
    $_ = <STDIN>;
    chomp;

    print "\nEnter your favorite divisor: ";
    my $fav_divisor = <STDIN>;
    chomp;

    my @my_divs = &divisors($_);

    given ($_) {
        when (!/\A\d+\Z/) {
            print "Wrong input! Try again.\n\n";
        }
        when ($_ % 2 == 0) {
            print "Number is even!\n";
            continue;
        }
        when ($_ % 2 != 0) {
            print "Number is odd!\n";
            continue;
        }
        when ($_ % $fav_divisor == 0) {
            print "Number is divisible by your favorite divisor!\n";
            continue;
        }
        when (@my_divs ~~ []) {
            print "Number is prime!\n";
        }
        default {
            print "Divisors: ", join ", ", @my_divs, "\n";
        }
    }

    print "\n";
}

sub divisors {
    my $number = shift;
    my @divisors = ();
    foreach my $divisor ( 2 .. ( $number/2 ) ) {
        push @divisors, $divisor unless $number % $divisor;
    }
    return @divisors;
}
