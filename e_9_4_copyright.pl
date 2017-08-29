#!/usr/bin/perl
## Copyright (C) 2017 by Yours Truly
use strict;
use warnings FATAL => 'all';

$^I = ".bak";
my $copyright = "## Copyright (C) 2017 by Yours Truly\n";

while(<>) {
    if (/\A#!/) {
        $_ .= $copyright;
    }
    print;
}
