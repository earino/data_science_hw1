#!/usr/bin/env perl

use warnings;
use strict;

use Data::Dumper;
use Text::CSV;

open(CRIMES, "<", "data/crimes_by_zip.csv")
  or die "Unable to open crime data.";

open(INCOMES, "<", "data/incomes_by_zip.csv")
  or die "Unable to open income data.";

my $csv = Text::CSV->new({
  binary    => 1,
  auto_diag => 1,
  sep_char  => ','    # not really needed as this is the default
});

my %crimes = ( );
my %incomes = ( );
while(my $fields = $csv->getline(*CRIMES)) {
  $crimes{$fields->[0]} = $fields->[1];
}

while(my $fields = $csv->getline(*INCOMES)) {
  $incomes{$fields->[0]} = $fields->[1];
}

foreach my $zip (sort keys %incomes) {
  my $crime = $crimes{$zip};
  next unless $crime;
  $crime =~ s/\s+//g;

  print "$zip,$crime,$incomes{$zip}\n";
}
