package e_14_2_hash_names;
use strict;
use warnings FATAL => 'all';

my %last_name = qw{
    fred flintstone Wilma Flintstone Barney Rubble
    betty rubble Bamm-Bamm Rubble PEBBLES FLINTSTONE };

my @keys = sort { "\L$last_name{$a}" cmp "\L$last_name{$b}"
    or "\L$a" cmp "\L$b" } keys %last_name;

for (@keys) {
    print "$last_name{$_}, $_\n";
}