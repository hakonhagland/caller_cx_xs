use strict;
use warnings;

use ExtUtils::MakeMaker;
WriteMakefile(
    NAME         => 'My::Caller',
    VERSION_FROM => 'Caller.pm', # finds $VERSION
    LIBS         => [''],   # e.g., '-lm'
    DEFINE       => '',     # e.g., '-DHAVE_SOMETHING'
    INC          => '',     # e.g., '-I/usr/include/other'
    TYPEMAPS     => [
        '/home/hakon/perlbrew/perls/perl-5.24.1/lib/5.24.1/ExtUtils/typemap'
    ],
);
