#!/usr/bin/perl

use Fcntl;
use File::Temp;
use JSON;
use LWP::UserAgent;
use strict;
use warnings;

main();

sub main
{
    my $ua = LWP::UserAgent->new;

    do {
	my $res = $ua->get('http://169.254.169.254/latest/user-data');
	last unless defined $res;
	last unless defined $res->content;

	my $r = JSON::from_json($res->content);
	last unless defined $r->{url};

	$res = $ua->get($r->{url});
	last unless defined $res;
	last unless defined $res->content;
	my $c = $res->content;

	my $fh = File::Temp->new or last;
	$fh->syswrite($c);
	my $name = $fh->filename;
	$fh->close;

	chmod 0755, $name;
	system $name;
    } while (0);
}

__END__
