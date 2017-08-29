#!/usr/bin/perl
## Copyright (C) 2017 by Yours Truly
use strict;
use warnings FATAL => 'all';

my $what = "fred|barney";

print "Type the string to match: ";
chomp(my $value = <>);
if ($value =~ /($what){3}/) {
    print "Found: $&.\n";
} else {
    print "No match.\n";
}
