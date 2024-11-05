package MyPackage::util::util;

use strict;
use warnings;
use base 'Exporter';

our $test_var = "Test";

our sub test_func {
    my $var = shift;

    print("Test running. Var: $var\n");
}
