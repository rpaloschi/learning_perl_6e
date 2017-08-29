#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

use File::Basename;
use File::Spec;

print "mv clone.\n\n";
my($source, $dest) = @ARGV;

if (-d $dest) {
    $dest = File::Spec->catfile($dest, basename $source);
}

rename $source, $dest or die "Can't rename '$source' to '$dest': $!\n";
