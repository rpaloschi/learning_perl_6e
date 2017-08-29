#!/usr/bin/perl
## Copyright (C) 2017 by Yours Truly

print "Enter the first integer: ";
chomp($first = <STDIN>);
print "\n";

print "Enter the second integer: ";
chomp($second = <STDIN>);
print "\n";

$product = $first * $second;
print "The product of $first and $second is $product.\n";
