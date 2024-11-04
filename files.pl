use strict;
use warnings;

# Read only
open (my $file, "<", "my_file.txt") or die $!;

while (my $line = <$file>) {
    print $line;
}

close($file);

# Append
open ($file, ">>", "my_file.txt") or die $!;

my $num_lines = 0;

while (my $line = <$file>) {
    $num_lines += 1;
}

print("Enter a new line: ");
my $input = <>;

print $file $input;

close ($file);
