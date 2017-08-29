#!/usr/bin/perl
## Copyright (C) 2017 by Yours Truly

use Math::Trig;

print "Enter the circumference ray: ";
chomp($radius = <STDIN>);
if ($radius < 0) {
	$circumference = 0
} else {
	$circumference = $radius * 2 * pi;
}
print "The circumference of a circle of radius $radius is $circumference \n";
