#!/usr/bin/perl
## Copyright (C) 2017 by Yours Truly

use 5.010001;

use strict;
use warnings;

print "File flags using for-when\n\n";

for (@ARGV) {
    chomp;

    print "\nFile: $_. Properties: ";

    when (-r) {
        print "Readable ";
        continue;
    }
    when (-w _) {
        print "Writable ";
        continue;
    }
    when (-x _) {
        print "Executable";
    }
}
