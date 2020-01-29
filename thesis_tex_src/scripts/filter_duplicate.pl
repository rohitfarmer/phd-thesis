#!/usr/bin/perl

use strict;
use Bio::SeqIO;

# This script is used to filter the duplicate sequences using BioPerl module

my %unique;
my $file   = $ARGV[0];
my $seqio  = Bio::SeqIO->new(-file => $file, -format => "fasta");
my $outseq = Bio::SeqIO->new(-file => ">$file.unique.fasta", -format => "fasta");

while(my $seqs = $seqio->next_seq) {
  my $id  = $seqs->display_id;
  my $seq = $seqs->seq;
  unless(exists($unique{$seq})) {
    $outseq->write_seq($seqs);
    $unique{$seq} +=1;
  }
}

