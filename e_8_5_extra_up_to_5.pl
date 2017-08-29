#!/usr/bin/perl
## Copyright (C) 2017 by Yours Truly
use strict;
use warnings FATAL => 'all';

while (<>) {
    chomp;
    if (/(?<word>\w+a)(?<extra>.{0,5})/xs) {
        print "\$word contains: '$+{word}'. \$extra contains: '$+{extra}'\n";
    } else {
        print "No match: |$_|\n";
    }
}
