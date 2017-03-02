use strict;
use warnings;

use ExtUtils::MakeMaker;
WriteMakefile(
    NAME         => 'My::Caller',
    VERSION_FROM => 'Caller.pm', # finds $VERSION
    LIBS         => [''],   # e.g., '-lm'
    DEFINE       => '',     # e.g., '-DHAVE_SOMETHING'
    INC          => '',     # e.g., '-I/usr/include/other'
);
