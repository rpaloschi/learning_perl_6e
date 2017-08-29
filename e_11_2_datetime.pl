#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
use DateTime;

my @lt = localtime();

my $now = DateTime->new(
    year => $lt[5] + 1900,
    month => $lt[4] + 1,
    day => $lt[3],
);

my $user_datetime = DateTime->new(
    year => $ARGV[0],
    month => $ARGV[1],
    day => $ARGV[2],
);

my $difference = $now - $user_datetime;
my ($years, $months, $days) = $difference->in_units( qw(years months days) );
printf "$years years, $months months, and $days days\n";
