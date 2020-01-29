#!/usr/bin/perl -w

$protein1=$ARGV[0];
$multiplepdb=$ARGV[1];
open(PDB, "<$multiplepdb") or die "Can not open file";
open(OUT, ">protein2.pdb") or die "Can not create file";
open(RMSD, ">RMSD.txt") or die "Can not create file";
$i=0;
while (<PDB>)
{
 if($_=~m/^ATOM/)
 {
  #print $_;
  print OUT $_;
  next;
 }
 elsif ($_=~m/^END/)
 {
  system ("matt $protein1 protein2.pdb");
  open (MattOutput, "<MattAlignment.txt");
  while(<MattOutput>)
  {
   if ($_ =~m/^Core RMSD:\s(\d+.\d+)/)
   {
        print RMSD "$i,$1\n";
   }
  }
 system ("rm protein2.pdb");
 open(OUT, ">protein2.pdb") or die "Can not create file";
 $i++;
 }
}

