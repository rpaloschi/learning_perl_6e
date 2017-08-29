#!/usr/bin/perl
## Copyright (C) 2017 by Yours Truly
chomp(@strings = <STDIN>);
@strings = sort(@strings);

@joined = join(",", @strings, "\n");
print("Ordered: @joined")
