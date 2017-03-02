package My::Module;

use My::Caller;

sub test {
    print "My::Module::test()\n";
    My::Caller::test_c();
}

1;
