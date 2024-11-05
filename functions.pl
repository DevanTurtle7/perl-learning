use strict;
use warnings;

sub multiply {
    my $num1 = shift;
    my $num2 = shift;

    return $num1 * $num2;
}

sub add {
    my ($num1, $num2) = @_;

    return $num1 + $num2;
}

my $mult_answer = multiply(3, 6);
my $add_answer = add(4, 2);

print("3 * 6 = $mult_answer\n");
print("4 + 2 = $add_answer\n");

sub pass_by_ref {
    # I think that this is the only way to pass by reference.
    # If you assign a variable to $_[0] and then change that variable,
    # the original reference will not change.
    $_[0] = "OVERWRITTEN";
}

my $test_var = "my value";
pass_by_ref($test_var);
print("$test_var\n");
