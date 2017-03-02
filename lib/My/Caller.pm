package My::Caller;

use strict;
use warnings;
require Exporter;
require XSLoader;

our @ISA = qw(Exporter);
our @EXPORT_OK = qw( );
our @EXPORT = qw( );
our $VERSION = '0.01';

XSLoader::load();

1;
