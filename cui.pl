#!/usr/bin/env perl
use strict;
use warnings;
use 5.010;
use POSIX;
use myterm;

use Guckets::Load;
use Guckets::CUI;

# prepare terminal
$SIG{INT} = $SIG{TERM} = sub {
	myterm::set(POSIX::ICANON | POSIX::ECHO);
	exit(4);
};



if (scalar(@ARGV) < 1) {
	print << "EOT";
Usage: $0 <level>
EOT
	exit(2);
}

myterm::unset(POSIX::ICANON | POSIX::ECHO);

# try to load the level

my $levelpack = "data/levels/".$ARGV[0].".pl";

my ($level, $levelset, $error) = Guckets::Load::load($levelpack);
die $! if (defined($error));

$| = 1;

Guckets::CUI::PlayLevel::play($level) if (defined($level));
Guckets::CUI::PlayLevelset::play($levelset) if (defined($levelset));

print "\e[1000;1H";
