#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

use File::Basename;
use File::Spec;

print "ln -s clone.\n\n";

my $symlink = $ARGV[0] eq '-s';
shift @ARGV if $symlink;

my($source, $dest) = @ARGV;

if (-d $dest) {
    $dest = File::Spec->catfile($dest, basename $source);
}

if ($symlink) {
    symlink $source, $dest
        or die "Can't make soft link from '$source' to '$dest': $!\n";
} else {
    link $source, $dest
        or die "Can't make hard link from '$source' to '$dest': $!\n";
}
