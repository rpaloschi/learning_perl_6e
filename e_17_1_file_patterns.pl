#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

my $filepath = 'e_7_names.txt';

open my $fh, '<', $filepath
    or die "Can't open '$filepath': $!";

chomp(my @lines = <$fh>);

while (1) {
    print 'Enter a pattern: ';
    chomp(my $pattern = <STDIN>);
    last if $pattern =~ /\A\s*\Z/;

    my @matches = eval { grep /$pattern/, @lines; };

    if ($@) {
        print "Error: $@";
    } else {
        my $count = @matches;
        print "There were $count matching strings:\n", map "$_\n", @matches;
    }
    print "\n";
}
