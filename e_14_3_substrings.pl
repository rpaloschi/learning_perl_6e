#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

print "Enter the string: ";
chomp(my $string = <>);
print "\n\n";

print "Enter the substring: ";
chomp(my $substring = <>);
print "\n\n";

my @positions;
my $previous_pos = 0;
while (1) {
    my $pos = index $string, $substring, $previous_pos + 1;
    last if ($pos == -1);

    push @positions, $pos;
    $previous_pos = $pos;
}

print "Found at positions: ", join ", ", @positions, "\n";