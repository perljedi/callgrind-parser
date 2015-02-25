use strict;
use warnings;
use Test::Spec;
use base qw(Test::Spec);
use Time::HiRes qw(gettimeofday tv_interval);
use lib qw(/home/dave/Callgrind-Parser/lib);
use Callgrind::Parser;


describe "my prog" => sub{
    it "rocks" => sub{
	my $t0 = [gettimeofday];
	my $fn = 't/data/cachegrind.out.2424';
	Callgrind::Parser::parseFile($fn);
	#print STDERR "\nparse ($fn) took ".tv_interval($t0)."\n";
	ok(1);
    };
    it "rolls" => sub{
	my $t0 = [gettimeofday];
	my $fn = 't/data/cachegrind.out.2425';
	Callgrind::Parser::parseFile($fn);
	#print STDERR "\nparse ($fn) took ".tv_interval($t0)."\n";
	ok(1);
    };
    it "kicks" => sub{
	my $t0 = [gettimeofday];
	my $fn = 't/data/cachegrind.out.2426';
	Callgrind::Parser::parseFile($fn);
	#print STDERR "\nparse ($fn) took ".tv_interval($t0)."\n";
	ok(1);
    };
    it "screams" => sub{
	my $t0 = [gettimeofday];
	my $fn = 't/data/cachegrind.out.2427';
	Callgrind::Parser::parseFile($fn);
	#print STDERR "\nparse ($fn) took ".tv_interval($t0)."\n";
	ok(1);
    };
};

runtests;