#! /usr/bin/perl

use warnings;
use strict;

use Digest::SHA1;

#my $data="example\+1899634\@example\.com";
sub Cfdata
{
my $ehead="n19";
my $etail="\@gmail\.com";
#my $ebel=join'', map +(0..9,'a'..'z','A'..'Z')[rand(10+26*2)], 1..8;
my $ebel=join'', map +(0..9,'a'..'z')[rand(10+26*2)], 1..8;
my $data=$ehead.$ebel.$etail;
return $data;
}

sub ShDig
{
my $data = Cfdata();
#print $data."\n";
my $sha = Digest::SHA1->new;
$sha->add($data);
my $digest = $sha->hexdigest;
if ($digest =~ /^c0ffee/)
  {
    print "Input Data is: ".$data."\n";
    print $digest."\n";
    
  }
}

#Main Script starts here ...

my $tdata="example\+1899634\@example\.com";
my $tsha = Digest::SHA1->new;
$tsha->add($tdata);
my $tdigest = $tsha->hexdigest;
if ($tdigest =~ /^c0ffee/)
  {
    print "#########################################"."\n";
    print "Input Data is: ".$tdata."\n";
    print $tdigest."\n";
    print "#########################################"."\n";
  }


my $counter = 100000000;
while ($counter > 0)
{
ShDig();
$counter -= 1;
}
