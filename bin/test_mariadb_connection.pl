#!/usr/bin/perl

use strict;
use warnings;

use DBI;
use Data::Dumper;
$Data::Dumper::Sortkeys = 1;

my $database = "varun";
my $hostname = "172.17.0.4";
my $port     = "3306";
my $user     = "root";
my $password = "mypass";

my $dsn = "DBI:mysql:database=$database;host=$hostname;port=$port";
my $dbh = DBI->connect($dsn, $user, $password);

my $sth = $dbh->prepare('SELECT id, first_name, last_name FROM authors WHERE last_name = ?')
    or die "prepare statement failed: $dbh->errstr()";

$sth->execute('sharma') or die "execution failed: $dbh->errstr()";

print $sth->rows . " rows found.\n";
while (my $ref = $sth->fetchrow_hashref()) {
    print "Found a row: id = $ref->{'id'}" . Dumper($ref);
}
$sth->finish;