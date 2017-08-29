#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

print "List ordinary contents of directory.\n\n";

print "Type a directory: ";
chomp(my $dir = <STDIN>);

opendir my $dh, $dir or die "Cannot open $dir: $!";
my @names;
while (my $name = readdir $dh) {
    push @names, $name;
}
print join "\n", sort @names;