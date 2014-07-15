#!/usr/bin/perl

use strict;
use warnings;

use LWP::Simple;

my @websites = @ARGV;
my $argLen = @ARGV;


my $destFolder="./";


warn "No Arguments Provided\n" if ($argLen == 0);

sub getImageUrisFromFacebook($);


while(@websites)
{
  my $response = get;  
  
  @imageUris =  getImageUrisFromFaceBook($response);
}


sub getImageUrisFromFaceBook()
{
  my $url =   shift;
  my @ret;
  @ret = $url~=m/url\(()\)/g;
  
  return @ret;
}
