#!/usr/bin/perl
## Copyright (C) 2017 by Yours Truly
use strict;
use warnings FATAL => 'all';

my %files_to_add;
foreach (@ARGV) {
    $files_to_add{$_} = 1;
}

while(<>) {
    if (/\A## Copyright/) {
        delete $files_to_add{$ARGV};
    }
}

@ARGV = sort keys(%files_to_add);
$^I = ".bak";
my $copyright = "## Copyright (C) 2017 by Yours Truly\n";

while(<>) {
    if (/\A#!/) {
        $_ .= $copyright;
    }
    print;
}
