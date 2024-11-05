use strict;
use warnings;

# Scalars
my $name = "Devan";

print("My name is $name\n"); # Double quotes interpolate variables and special symbols
print('My name is $name\n'); # Single quotes prints the string literal
print("\n");

my $test1 = "\n";
my $test2 = '\n';

print("$test1");
print("$test2");
print("\n");

# Arrays
my @numbers = (3, 2, 4, 1);
my $first_element = $numbers[0];

print("$first_element\n");

if (@numbers > 2) {
    print("Numbers has more than 2 elements\n");
} else {
    print("Numbers has less than 2 elements\n");
}

# $#numbers is the index of the last element in the array
my @all_except_first = @numbers[1..$#numbers];
my @first_and_last = @numbers[0,3];
my @sorted = sort @numbers;
my @reversed = reverse @numbers;

print("All numbers except first: @all_except_first\n");
print("First and last numbers: @first_and_last\n");
print("Sorted numbers: @sorted\n");
print("Reversed numbers: @reversed\n");


# Hashes
my %fruit_color = (
    apple => "red",
    banana => "yellow",
);

my $apple_color = $fruit_color{"apple"};
print("The color of an apple is $apple_color\n");
print("The color of an banana is $fruit_color{'banana'}\n");

my @fruits = keys %fruit_color;
my @colors = values %fruit_color;

print("Fruits: @fruits\n");
print("Colors: @colors\n");

my $scalar_hash = {
    Jan => {
        full_name => "January",
        days => 31,
    },
    Feb => {
        full_name => "February",
        days => 28,
    },
    Mar => {
        full_name => "March",
        days => 31,
    }
};

my $jan_name = $scalar_hash->{'Jan'}->{'full_name'};
print("$jan_name has $scalar_hash->{'Jan'}->{'days'} days\n");


for (my $i = 0; $i <= 10; $i++) {
    print("$i\n");

    if ($i % 2 == 0) {
        print("even\n");
    } elsif ($i < 5) {
        print("number is odd and less than 5\n");
    } else {
        print("number is odd and greater than 5\n");
    }

    unless ($i == 7) {
        print("This number is not 7\n");
    } else {
        print("This number is 7\n");
    }
}

my @array = (34, 23, 43, 67, 234, 39, 23);

foreach my $number (@array) {
    print("Number: $number\n");
}

foreach my $month_abbrev (keys %$scalar_hash) {
    print("${month_abbrev}\n");
    # One way to get value from hash reference
    my $month_data = $scalar_hash->{$month_abbrev};

    foreach my $key (keys %$month_data) {
        # Another way to get value from hash reference
        my $value = %$month_data{$key};
        print("  $key: $value\n");
    }
}
