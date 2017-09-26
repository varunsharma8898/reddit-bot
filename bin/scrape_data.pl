#!/usr/bin/perl
use strict;
use warnings;

use Reddit::Client;

#sub post_reddit_link {
#    my ($title, $url, $subreddit) = @_;


my $client_id = 'x-MUHMAccrVBCA';
my $secret = 'GQFPRRWA2cRBRIheB7fFNpZjl7g';
my $username = 'ThatUglyBrownGuy';
my $password = 'environment';
my $useragent = "CricketScraper 0.1 by /u/$username";

my $reddit = Reddit::Client->new(
    client_id  => $client_id,
    secret     => $secret,
    username   => $username,
    password   => $password,
    user_agent => $useragent,
);

use Data::Dumper;
print "\n\ndone" . Dumper($reddit);

my $links = $reddit->fetch_links(subreddit => '/r/cricket', limit => 10);
#foreach (@{$links->{items}}) {
#    ...
#}
print "\n\n links = " . Dumper($links);

#
#use Carp;
#sub _readConfig {
#    my ($file) = @_;
#    if (!open(FILE, $file)) {
#        "no config file passed to read";
#    }
#
#}