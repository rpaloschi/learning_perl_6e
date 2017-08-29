#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

foreach ( glob( '.* *' ) ) {
    my $dest = readlink $_;
    print "$_ -> $dest\n" if defined $dest;
}
