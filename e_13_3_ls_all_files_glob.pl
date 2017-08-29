#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

print "List ordinary contents of directory.\n\n";

print "Type a directory: ";
chomp(my $dir = <STDIN>);
chdir $dir or die "cannot chdir to $dir: $!";
print "\n";

print join "\n", glob "{.*,*}"
