#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
use Module::CoreList;

my %modules = %{ $Module::CoreList::version{5.014} };

print "Module List:\n\n";
print join "\n", sort keys(%modules);
