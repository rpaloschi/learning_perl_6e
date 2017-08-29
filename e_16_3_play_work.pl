#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

if (`date` =~ /\A(Sat|Sun)/) {
    print "time to play!\n";
}
else {
    print "time to work!\n";
}
