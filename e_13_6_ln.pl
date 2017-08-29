#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

use File::Basename;
use File::Spec;

print "ln clone.\n\n";
my($source, $dest) = @ARGV;

if (-d $dest) {
    $dest = File::Spec->catfile($dest, basename $source);
}

link $source, $dest or die "Can't link '$source' to '$dest': $!\n";
