#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

print "Oldest file\n\n";

my $oldest_file;
my $oldest_nr_days = 0;

for(@ARGV) {
    chomp;

    my $days = -M $_;
    if ($days > $oldest_nr_days) {
        $oldest_nr_days = $days;
        $oldest_file = $_;
    }
}

if ($oldest_file) {
    print "Oldest file: '$oldest_file'. $oldest_nr_days days of age.\n";
} else {
    print "No files passed.\n";
}
