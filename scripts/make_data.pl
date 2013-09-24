#!/usr/bin/env perl
#
use warnings;
use strict;

use Data::Dumper;

while(my $zip = <>) {
  my $income_1999 = <>;
  my $income_1989 = <>;
  my $percent_change = <>; 
  chomp($zip, $income_1999);

  $income_1999 =~ s/\D//g;
  print "$zip,$income_1999\n";
}
