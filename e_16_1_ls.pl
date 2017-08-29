#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

chdir '/' or die "Can't chdir to root: $!";
exec 'ls', '-l' or die "Unable to ls: $!";
