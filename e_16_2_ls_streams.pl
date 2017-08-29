#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

open STDOUT, '>', 'ls.out' or die "Can't write to ls.out: $!";
open STDERR, '>', 'ls.err' or die "Can't write to ls.err: $!";
chdir '/' or die "Can't chdir to root: $!";
exec 'ls', '-l' or die "Unable to ls: $!";
