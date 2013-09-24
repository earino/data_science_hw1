#!/usr/bin/env perl
#
use warnings;
use strict;

use Data::Dumper;
use Text::CSV;

my $csv = Text::CSV->new ({
  binary    => 1,
  auto_diag => 1,
  sep_char  => ','    # not really needed as this is the default
});

my %zip_codes = ();

while (my $fields = $csv->getline(*ARGV)) {
  $zip_codes{$fields->[8]}++;
}

print "zip_code, crimes\n";
foreach my $zip (sort keys %zip_codes) {
  print "$zip, $zip_codes{$zip}\n";
}
