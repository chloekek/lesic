use strict;
use warnings;

use Snowflake::Rule::Mercury qw(mercury_executable mercury_module);

my @modules;

push(@modules, my $lesic_session = mercury_module(
    name         => 'lesic_session',
    source       => 'src/lesic_session.m',
    dependencies => [],
));

push(@modules, my $lesic_record = mercury_module(
    name         => 'lesic_record',
    source       => 'src/lesic_record.m',
    dependencies => [$lesic_session],
));

push(@modules, my $lesic_main = mercury_module(
    name         => 'lesic_main',
    source       => 'src/lesic_main.m',
    dependencies => [],
));

my $lesicd = mercury_executable(
    name => 'lesicd',
    modules => [@modules],
);

{lesicd => $lesicd};
