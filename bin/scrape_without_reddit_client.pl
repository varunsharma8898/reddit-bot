#!/usr/bin/perl

use strict;
use warnings;

use Carp;
use LWP::UserAgent;
use HTTP::Request;
use URI::Escape;

my $client_id = 'x-MUHMAccrVBCA';
my $secret = 'GQFPRRWA2cRBRIheB7fFNpZjl7g';
my $username = 'ThatUglyBrownGuy';
my $password = 'environment';
my $useragent = "CricketScraper 0.1 by /u/$username";


my $url = "https://$client_id:$secret\@www.reddit.com/api/v1/access_token";

my $ua = LWP::UserAgent->new(agent => $useragent);
my $req = HTTP::Request->new(POST => $url);
$req->header('content-type' => 'application/x-www-form-urlencoded');

my $postdata = "grant_type=password&username=$username&password=" . uri_escape($password);
$req->content($postdata);

my $res = $ua->request($req);

use Data::Dumper;
$Data::Dumper::Sortkeys = 1;

print "\n\nresponse = " . Dumper($res);



if ($res->is_success) {
    return $res->decoded_content;
}
else {
    croak sprintf('Request error: HTTP %s', $res->status_line);
}


