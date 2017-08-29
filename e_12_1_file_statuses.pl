#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

print "Testing file statuses\n\n";

for(@ARGV) {
    chomp;

    my $exists = (-e $_ ? "YES" : "NO");
    my $readable = (-r $_ ? "YES" : "NO");
    my $writable = (-w $_ ? "YES" : "NO");
    my $executable = (-x $_ ? "YES" : "NO");

    print "File: '$_'.
        Exists: $exists
        Readable: $readable
        Writable: $writable
        Executable: $executable\n\n";
}
