use strict;
use warnings;

opendir(my $dir, "./") or die $!;

my @files = readdir $dir;
my $num_files = @files;

print("Directory open. $num_files files found.\n");

foreach my $file (@files) {
    print("$file\n");
}

closedir($dir)
