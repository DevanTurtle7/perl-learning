use strict;
use warnings;

my $string1 = "Foo";
my $string2 = "Bar";

my $string_concat = $string1.$string2;
my $multi_string = $string1 x 3;

my $string_concat2 = $string1;
$string_concat2 .= $string2;

print("String concat: $string_concat\n");
print("String concat 2: $string_concat2\n");
print("Multi string: $multi_string\n");

