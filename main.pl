#!/usr/bin/perl

use strict;
use warnings;

use LWP::Simple;

my @websites = @ARGV;
my $argLen = @ARGV;

warn "No Arguments Provided\n" if ($argLen == 0);

while(@websites)
