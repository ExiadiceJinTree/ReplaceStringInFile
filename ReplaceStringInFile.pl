#! /usr/bin/perl

if (@ARGV != 3) {
    print <<EOD;
++++++++++++++++++++++++++++++++++++++++++++++++++++
Replaces all the specified strings in the file specified on the command line with the specified new string.

Usage:
  \$ ReplaceStringInFile.pl [old-string] [new-string] [filePath]
++++++++++++++++++++++++++++++++++++++++++++++++++++
EOD
    exit;
}
$old = $ARGV[0];
$new = $ARGV[1];
$file = $ARGV[2];

$old =~ s/\//\\\//g;
$new =~ s/\//\\\//g;

system "perl -i -pe \'s/$old/$new/g\' $file";
print "Done\n";
