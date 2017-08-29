#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

print "rm clone.\n\n";

for(@ARGV) {
    unlink $_ or warn "Unable to unlink '$_'\n";
}
