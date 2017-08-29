#!/usr/bin/perl
## Copyright (C) 2017 by Yours Truly

my %family_names = (
	fred => 'flinstone',
	barney => 'rubble',
	wilma => 'flinstone',
);

printf "Type the name: ";
chomp(my $name = <STDIN>);

if (exists $family_names{$name}) {
	$family_name = %family_names{$name};
	printf "Family name is $family_name.\n";
} else {
	printf "I don't know $name.\n";
}
