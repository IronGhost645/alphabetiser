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
print '              | $$      /|/_)             |   |)     _   _       /  |    _|    _|   o  __           ', "\n";
print '              |__/       |  \ |  |        |   |/\   |/  / \_    |   |   / |   / |   | /\_    ', "\n";
print '                         |(_/  \/|/       |   |  |/ |_/ \_/      \_/\_/ \/|_/ \/|_/ |/ _/   ', "\n";
print '                                (| ', "\n";
print "----------------------------------------------------------------------------------------------------------------"; # Line for emphasis
print "\n\n";

print "Welcome to Alphabetiser!\n";
print "Alphabetiser is a program that takes an array, processes it with it's sorting algorithm, and then returns it in perfect alphabetical order.\n\n";
print "Main Menu:\n\n";
print "[1] Alphabetise an array of your choice\n";
print "[2] Alphabetise a demo array\n";
print "[3] Go to the Alphabetiser page on github (For README and LICENCE)\n";
print "[4] Quit Alphabetiser\n\n";
print "Your selection: ";
chomp(my $main = <STDIN>);
print "\n";
if ($main == "1") {
  print "Press enter to continue...";
  chomp(my $enter = <STDIN>);
  print "\033[2J";   # clear the screen (stolen from internet)
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
  print '              | $$       , _            _____                     __,                  ', "\n";
  print '              | $$      /|/_)             |   |)     _   _       /  |    _|    _|   o  __           ', "\n";
  print '              |__/       |  \ |  |        |   |/\   |/  / \_    |   |   / |   / |   | /\_    ', "\n";
  print '                         |(_/  \/|/       |   |  |/ |_/ \_/      \_/\_/ \/|_/ \/|_/ |/ _/   ', "\n";
  print '                                (| ', "\n";
  print "----------------------------------------------------------------------------------------------------------------";
  print "\n\n";
  # Array Selection Screen
  undef @startingArray;
  print "How many elements would you like in your array? ";
  chomp(my $numbers = <STDIN>);
  print "\n";
  my $j = 0;
  my $input = 0;
  print "Please enter the elements of your array:\n";
  while ($j < $numbers) {
    print "[", $j + 1, "]: ";
    chomp($input = <STDIN>);
    push @startingArray, $input;
    $j++;
  };
  print "\nPress enter to process array...";
} elsif ($main == "2"){

  print "\033[2J";   # clear the screen (stolen from internet)
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
  print '              | $$       , _            _____                     __,                  ', "\n";
  print '              | $$      /|/_)             |   |)     _   _       /  |    _|    _|   o  __           ', "\n";
  print '              |__/       |  \ |  |        |   |/\   |/  / \_    |   |   / |   / |   | /\_    ', "\n";
  print '                         |(_/  \/|/       |   |  |/ |_/ \_/      \_/\_/ \/|_/ \/|_/ |/ _/   ', "\n";
  print '                                (| ', "\n";
  print "----------------------------------------------------------------------------------------------------------------";
  print "\n\n";
  
  
  print "Array to alphabetise ->\n\n";
  
  # Prints out elements of startingArray
  my $i = 0;
  until($i >= scalar @startingArray) {
  	print "[",$i+1,"]", ": ", $startingArray[$i], "\n";
  	$i++;
  };
  
  print "\n\n";
  print "Press enter to continue... ";
  my $continue = <STDIN>;

} elsif ($main == "3") {
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
  print '              | $$      /|/_)             |   |)     _   _       /  |    _|    _|   o  __           ', "\n";
  print '              |__/       |  \ |  |        |   |/\   |/  / \_    |   |   / |   / |   | /\_    ', "\n";
  print '                         |(_/  \/|/       |   |  |/ |_/ \_/      \_/\_/ \/|_/ \/|_/ |/ _/   ', "\n";
  print '                                (| ', "\n";
  print "----------------------------------------------------------------------------------------------------------------";
  print "\n\n";
  print "Please copy and paste the following link into your browser:\n";
  print "http://www.github.com/IronGhost645/alphabetiser/\n\n";
  exit 1;
} elsif ($main == "4") {
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
  print '              | $$      /|/_)             |   |)     _   _       /  |    _|    _|   o  __           ', "\n";
  print '              |__/       |  \ |  |        |   |/\   |/  / \_    |   |   / |   / |   | /\_    ', "\n";
  print '                         |(_/  \/|/       |   |  |/ |_/ \_/      \_/\_/ \/|_/ \/|_/ |/ _/   ', "\n";
  print '                                (| ', "\n";
  print "----------------------------------------------------------------------------------------------------------------";
  print "\n\n";
  print "Well why did you even bother running the program?\n\n";
  exit 1;
}

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
print '              | $$      /|/_)             |   |)     _   _       /  |    _|    _|   o  __           ', "\n";
print '              |__/       |  \ |  |        |   |/\   |/  / \_    |   |   / |   / |   | /\_    ', "\n";
print '                         |(_/  \/|/       |   |  |/ |_/ \_/      \_/\_/ \/|_/ \/|_/ |/ _/   ', "\n";
print '                                (| ', "\n";
print "----------------------------------------------------------------------------------------------------------------"; # Line for emphasis
print "\n\n";
print "Let's go!";
print "\n\n";
print "Alphabetising... (this may take up to three seconds)\n\n";
sleep(3);

# This loop makes startingArray lowercase
my $y = 0;
my $old;
until ($y >= scalar @startingArray) {
  my $old = $startingArray[$y];
  $startingArray[$y] = lc $old;
  $y++;
};

# Just defining some variables
my $alphabetising = 1;
my $alphabet = " abcdefghijklmnopqrstuvwxyz";
my $pos1;
my $pos2;
my $resolved = 0;
my $f = 0;

# Main loop, doesn't exit until alphabetised
while ($alphabetising == 1){
  my $correct = 0;                                                        # Reset correct count in order to not end early
  my $x = 0;                                                              # Resets X each time looping through array
  while ($x < (scalar @startingArray) - 1){                               # Repeats exactly seven times (I think)
    $pos1 = index($alphabet, substr($startingArray[$x],0,1));             # Gets the position of the first letter of the first word
    $pos2 = index($alphabet, substr($startingArray[$x+1],0,1));           # Gets the position of the first letter of the second word
    
    if ($pos1 > $pos2) {                                                  # If they are in the wrong order
      alias @startingArray[$x,$x+1] = @startingArray[$x+1,$x];            # Swap them
    } elsif ($pos1 == $pos2) {                                            # If they are identical
      while ($resolved == 0) {                                            # Loop until resolved
        $pos1 = index($alphabet, substr($startingArray[$x],$f+1,1));      # Get more positions (second letter, third letter etc as f iterates)
        $pos2 = index($alphabet, substr($startingArray[$x+1],$f+1,1));    # ''
        
        if ($pos1 > $pos2) {                                              # If they are in the wrong order
          alias @startingArray[$x,$x+1] = @startingArray[$x+1,$x];        # Swap them
          $resolved = 1;                                                  # Problem is resolved
          $correct++;                                                     # This set is correct
        } else {
          $resolved = 1;                                                  # Problem is already resolved
          $correct++;                                                     # This set was already correct
        }
        
        $f++;                                                             # Increase F (index of letter to compare)
      };
    } else {                                                              # If they are in the correct order
      $correct++;                                                         # One more is correct
    };
    
    $x++;                                                                 # Iterate X (move to next set of words)
  };
  if ($correct >= (scalar @startingArray) - 1){                           # If all elements are in correct order
    $alphabetising = 0;                                                   # Break alphabetising loop
  };
};

# All done
# Wow that took me a while to write

print "Array is now alphabetised!\n\n";
print "Press enter to get your fabulous, perfectly alphabetised array...";
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
print '              | $$      /|/_)             |   |)     _   _       /  |    _|    _|   o  __           ', "\n";
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
my $i = 0;
until($i >= scalar @startingArray) {
	print "[",$i+1,"]", ": ", $startingArray[$i], "\n";
	$i++;
}
print "\n\n\n";

print "Thanks for using Alphabetiser! \n\n\n";
