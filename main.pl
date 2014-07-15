#!/usr/bin/perl

use strict;
use warnings;

use LWP::Simple;

my @websites = @ARGV;
my $argLen = @ARGV;


my $destFolder="./";


warn "No Arguments Provided\n" if ($argLen == 0);

sub getImageUrlsFromFacebook($);

my @imageUrls = ();
while(@websites)
{
  my $response = get;  
  
  push @imageUrls , getImageUrlsFromFaceBook($response);
}

while(@imageUrls)
{
  print; 
  head;
  print @_[1]."\n";
}

<stdin>;



sub getImageUrlsFromFaceBook($)
{
  my $url =   shift;
  my @ret;
  @ret = $url~=m/url\((.*_n\..*)\)/g;
  
  return @ret;
}
