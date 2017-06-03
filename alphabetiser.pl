#!/usr/bin/perl
use strict;
use warnings;
use Data::Alias;

# CHANGE THE VALUES OF THE ARRAY BELOW AS YOU WISH
my @startingArray = (
  "Blue",
  "Alto",
  "Charlie",
  "Delta",
  "Why",
  "Am",
  "I",
  "Here",
);
# CHANGE THE VALUES OF THE ARRAY ABOVE AS YOU WISH

print "\033[2J";   # clear the screen (stolen from internet)
print "\033[0;0H"; # jump to 0,0
print "\n\n";


# I used http://patorjk.com/software/taag/ for this text

print '  /$$$$$$  /$$           /$$                 /$$                   /$$     /$$ ', "\n";
print ' /$$__  $$| $$          | $$                | $$                  | $$    |__/ ', "\n";
print '| $$  \ $$| $$  /$$$$$$ | $$$$$$$   /$$$$$$ | $$$$$$$   /$$$$$$  /$$$$$$   /$$  /$$$$$$$  /$$$$$$   /$$$$$$ ', "\n";
print '| $$$$$$$$| $$ /$$__  $$| $$__  $$ |____  $$| $$__  $$ /$$__  $$|_  $$_/  | $$ /$$_____/ /$$__  $$ /$$__  $$ ', "\n";
print '| $$__  $$| $$| $$  \ $$| $$  \ $$  /$$$$$$$| $$  \ $$| $$$$$$$$  | $$    | $$|  $$$$$$ | $$$$$$$$| $$  \__/ ', "\n";
print '| $$  | $$| $$| $$  | $$| $$  | $$ /$$__  $$| $$  | $$| $$_____/  | $$ /$$| $$ \____  $$| $$_____/| $$ ', "\n";
print '| $$  | $$| $$| $$$$$$$/| $$  | $$|  $$$$$$$| $$$$$$$/|  $$$$$$$  |  $$$$/| $$ /$$$$$$$/|  $$$$$$$| $$ ', "\n";
print '|__/  |__/|__/| $$____/ |__/  |__/ \_______/|_______/  \_______/   \___/  |__/|_______/  \_______/|__/  ', "\n";
print '              | $$       , _            _____                     __,                  ', "\n";
print '              | $$      /|/_)          () |   |)     _   _       /  |    _|    _|   o  __           ', "\n";
print '              |__/       |  \ |  |        |   |/\   |/  / \_    |   |   / |   / |   | /\_    ', "\n";
print '                         |(_/  \/|/       |   |  |/ |_/ \_/      \_/\_/ \/|_/ \/|_/ |/ _/   ', "\n";
print '                                (| ', "\n";
print "----------------------------------------------------------------------------------------------------------------"; # Line for emphasis
print "\n\n";


print "Array to alphabetise ->\n\n";

# Prints out elements of startingArray
my $i = 0;
until($i >= scalar @startingArray) {
	print "[",$i,"]", ": ", $startingArray[$i], "\n";
	$i++;
}

print "\n\n";
print "Press enter to continue... ";
my $continue = <STDIN>;

print "\033[2J";   # clear the screen
print "\033[0;0H"; # jump to 0,0
print "\n\n";

print '  /$$$$$$  /$$           /$$                 /$$                   /$$     /$$ ', "\n";
print ' /$$__  $$| $$          | $$                | $$                  | $$    |__/ ', "\n";
print '| $$  \ $$| $$  /$$$$$$ | $$$$$$$   /$$$$$$ | $$$$$$$   /$$$$$$  /$$$$$$   /$$  /$$$$$$$  /$$$$$$   /$$$$$$ ', "\n";
print '| $$$$$$$$| $$ /$$__  $$| $$__  $$ |____  $$| $$__  $$ /$$__  $$|_  $$_/  | $$ /$$_____/ /$$__  $$ /$$__  $$ ', "\n";
print '| $$__  $$| $$| $$  \ $$| $$  \ $$  /$$$$$$$| $$  \ $$| $$$$$$$$  | $$    | $$|  $$$$$$ | $$$$$$$$| $$  \__/ ', "\n";
print '| $$  | $$| $$| $$  | $$| $$  | $$ /$$__  $$| $$  | $$| $$_____/  | $$ /$$| $$ \____  $$| $$_____/| $$ ', "\n";
print '| $$  | $$| $$| $$$$$$$/| $$  | $$|  $$$$$$$| $$$$$$$/|  $$$$$$$  |  $$$$/| $$ /$$$$$$$/|  $$$$$$$| $$ ', "\n";
print '|__/  |__/|__/| $$____/ |__/  |__/ \_______/|_______/  \_______/   \___/  |__/|_______/  \_______/|__/  ', "\n";
print '              | $$       , _            _____                     __, ', "\n";
print '              | $$      /|/_)          () |   |)     _   _       /  |    _|    _|   o  __           ', "\n";
print '              |__/       |  \ |  |        |   |/\   |/  / \_    |   |   / |   / |   | /\_    ', "\n";
print '                         |(_/  \/|/       |   |  |/ |_/ \_/      \_/\_/ \/|_/ \/|_/ |/ _/   ', "\n";
print '                                (| ', "\n";
print "----------------------------------------------------------------------------------------------------------------"; # Line for emphasis
print "\n\n";
print "Let's go!";
print "\n\n";

# This loop makes startingArray lowercase
my $y = 0;
my $old;
until ($y >= scalar @startingArray) {
  my $old = $startingArray[$y];
  $startingArray[$y] = lc $old;
  $y++;
};

# begin bubble sort through elements of startingArray
my $x = 0;
my $u = 0;
my $string1;
my $string2;
my $fl1;
my $fl2;
my $pos1;
my $pos2;
my $alphabet = " abcdefghijklmnopqrstuvwxyz";
my $alphabetised = "0";
until($alphabetised = "1"){
  until($x >= (scalar @startingArray) - 1) {
    print "Starting bubble sort number ", ($x + 1), "\n\n";
    $string1 = $startingArray[$x];        # Word 1
    $fl1 = substr($string1,0,1);          # (First letter of) Word 1
    $pos1 = index($fl1, $alphabet);       # ((Position in alphabet of) first letter of) Word 1
    
    print "[string1]: $string1 \n";       #
    print "[fl1]: $fl1 \n";               # Cool-looking output
    print "[pos1]: $pos1 \n\n";           #
    
    $string2 = $startingArray[$x+1];
    $fl2 = substr($string2,0,1);
    $pos2 = index($fl2, $alphabet);
    
    print "[string2]: $string2 \n";
    print "[fl2]: $fl2 \n";
    print "[pos2]: $pos2 \n\n";
    
    if ($pos1 > $pos2){
      alias @startingArray[$x,$x+1] = @startingArray[$x+1,$x];
      print "Swapping [string1]: '$string1' with [string2]: '$string2' \n\n"; # Status update
    } else {
      print "Not swapping [string1]: '$string1' with [string2]: '$string2' \n\n" # Status update
    };
    $x++; # Increment x by 1
  };
  print "Verifying whether or not array is properly ALPHABETISED...\n\n";
  # Now we need to check if the array is properly ALPHABETISED
  my $u = 0;
  my $corrects = 0;
  until ($u >= (scalar @startingArray) -1) {
    
    print "Starting verification stage ", ($u + 1), "\n\n";
    
    $string1 = $startingArray[$x];        # Word 1
    $fl1 = substr($string1,0,1);          # (First letter of) Word 1
    $pos1 = index($fl1, $alphabet);       # ((Position in alphabet of) first letter of) Word 1
    
    print "[string1]: $string1 \n";       #
    print "[fl1]: $fl1 \n";               # Cool-looking output
    print "[pos1]: $pos1 \n\n";           #
    
    $string2 = $startingArray[$x+1];
    $fl2 = substr($string2,0,1);
    $pos2 = index($fl2, $alphabet);
    
    print "[string2]: $string2 \n";
    print "[fl2]: $fl2 \n";
    print "[pos2]: $pos2 \n\n";
    
    if ($pos1 > $pos2){
      print "EXITING VERIFICATION: Array not properly ALPHABETISED\n\n";
      $u = (scalar @startingArray) + 5;
    } else {
      print "Verification stage ",$u+1," successful\n\n";
      $u++;
      $corrects++;
      if ($corrects = (scalar @startingArray) - 1){
        print "Verification complete! Verification was a success! Huzzah!\n\n";
        $alphabetised = "1";
      }
    }
  };
};
print "Array is now alphabetised!\n\n";
print "Press enter to get your fabulous, perfectly alphabetised array...";
$continue = <STDIN>;

print "\033[2J";   # clear the screen
print "\033[0;0H"; # jump to 0,0
print "\n\n";

print '  /$$$$$$  /$$           /$$                 /$$                   /$$     /$$ ', "\n";
print ' /$$__  $$| $$          | $$                | $$                  | $$    |__/ ', "\n";
print '| $$  \ $$| $$  /$$$$$$ | $$$$$$$   /$$$$$$ | $$$$$$$   /$$$$$$  /$$$$$$   /$$  /$$$$$$$  /$$$$$$   /$$$$$$ ', "\n";
print '| $$$$$$$$| $$ /$$__  $$| $$__  $$ |____  $$| $$__  $$ /$$__  $$|_  $$_/  | $$ /$$_____/ /$$__  $$ /$$__  $$ ', "\n";
print '| $$__  $$| $$| $$  \ $$| $$  \ $$  /$$$$$$$| $$  \ $$| $$$$$$$$  | $$    | $$|  $$$$$$ | $$$$$$$$| $$  \__/ ', "\n";
print '| $$  | $$| $$| $$  | $$| $$  | $$ /$$__  $$| $$  | $$| $$_____/  | $$ /$$| $$ \____  $$| $$_____/| $$ ', "\n";
print '| $$  | $$| $$| $$$$$$$/| $$  | $$|  $$$$$$$| $$$$$$$/|  $$$$$$$  |  $$$$/| $$ /$$$$$$$/|  $$$$$$$| $$ ', "\n";
print '|__/  |__/|__/| $$____/ |__/  |__/ \_______/|_______/  \_______/   \___/  |__/|_______/  \_______/|__/  ', "\n";
print '              | $$       , _            _____                     __, ', "\n";
print '              | $$      /|/_)          () |   |)     _   _       /  |    _|    _|   o  __           ', "\n";
print '              |__/       |  \ |  |        |   |/\   |/  / \_    |   |   / |   / |   | /\_    ', "\n";
print '                         |(_/  \/|/       |   |  |/ |_/ \_/      \_/\_/ \/|_/ \/|_/ |/ _/   ', "\n";
print '                                (| ', "\n";
print "----------------------------------------------------------------------------------------------------------------"; # Line for emphasis
print "\n\n";
print "Here is your state-of-the-art alphabetised array!\n\n";

# Should change startingArray back to the first letters all being capitalised
$y = 0;
until ($y >= scalar @startingArray) {
  my $old = $startingArray[$y];
  $startingArray[$y] = ucfirst $old;
  $y++;
};

# Prints out elements of startingArray
$i = 0;
until($i >= scalar @startingArray) {
	print "[",$i,"]", ": ", $startingArray[$i], "\n";
	$i++;
}
print "\n\n\n";

print "Thanks for using Alphabetiser! \n\n\n";