use strict;
use warnings;

sub multiply {
    my $num1 = shift;
    my $num2 = shift;

    return $num1 * $num2;
}

my $answer = multiply(3, 6);
print("$answer\n")
