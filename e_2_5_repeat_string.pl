#!/usr/bin/perl
## Copyright (C) 2017 by Yours Truly

print "Enter the word: ";
chomp($word = <STDIN>);
print "\n";

print "Enter the # of repetitions: ";
chomp($repetitions = <STDIN>);
print "\n";

$word .= "\n";

print $word x $repetitions;
