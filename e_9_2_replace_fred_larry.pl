#!/usr/bin/perl
## Copyright (C) 2017 by Yours Truly
use strict;
use warnings FATAL => 'all';

$^I = ".out";

while(<>) {
    s/Fred/Larry/ig;
    print;
}
