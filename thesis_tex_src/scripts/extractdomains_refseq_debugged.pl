#!/usr/bin/perl

use warnings;
use strict;
use Data::Dumper;

# This script is used to extract the domain sequences matched by the stdACP hmm model against refseq database
# It reads the hmmsearch output and search for each domain sequences and the domain number.

my @fastatag;
my @sequence;
my @winnDomains;
my @len;
my $winnDomain;

while( <> ) {
	my $fa = undef;
	my $seq = undef;
	$winnDomain = $1 if /\=\= domain\s(\d+)/; # Search for the line which starts with ==domain num and read the number of the domain
	if( m/^\s+(gi\|[\w\|\_\-\.]+|sp\|[\w\|\_\-\.]+)\s+\d+.([A-Za-z_\-]+)/ ) {
		$fa = $1; # Store the name or tag 
		$seq = $2; # Store the sequence
	}

	# Push everything catched above in an array
	if( $fa && $seq ) {
		$seq =~ s/\-//g;
		push @winnDomains, $winnDomain;
		push @fastatag, $fa;
		push @sequence, $seq;
		push @len, length( $seq );
	}
}

# Sort all the sequences according to lenght in decreasing order
my @sorted = sort { $len[$b] <=> $len[$a] } 0 .. $#len;

#print Dumper @fastatag; # This is to crosscheck

# Output the final list
for my $i ( @sorted ) {
  	if(length($sequence[$i])>=60)
	{
	print '>'. $fastatag[$i] . "Domain_" . $winnDomains[$i] . "\n";
	print $sequence[$i] . "\n\n\n";
	}
	else{ last;}
}

print "Number of sequences in sorted array", scalar @sorted;
