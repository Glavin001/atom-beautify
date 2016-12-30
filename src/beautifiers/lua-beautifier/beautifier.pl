# Copyright 2011 Paul Kulchenko
# Credits: http://notebook.kulchenko.com/programming/lua-beautifier-in-55-lines-of-perl
use strict;
use warnings;

use constant INDENT => '  ';
my($currIndent, $nextIndent, $prevLength) = (0, 0, 0);

while (<>) {
  chomp;
  s/^\s+|\s+$//g; # remote all spaces on both ends
  s/\s+/ /g; # replace all whitespaces inside the string with one space

  my $orig = $_;

  s/(['"])[^\1]*?\1//g; # remove all quoted fragments for proper bracket processing
  s/\s*--.+//; # remove all comments; this ignores long bracket style comments

  # open a level; increase next indentation; don't change current one
  if (/^((local )?function|repeat|while)\b/ && !/\bend\s*[\),;]*$/
   || /\b(then|do)$/ && !/^elseif\b/     # only open on 'then' if there is no 'elseif'
   || /^if\b/ && /\bthen\b/ && !/\bend$/ # only open on 'if' if there is no 'end' at the end
   || /\bfunction\s*\([^\)]*\)$/) {
    $nextIndent = $currIndent + 1;
  }
  # close the level; change both current and next indentation
  elsif (/^until\b/ 
      || /^end\s*[\),;]*$/
      || /^end\s*\)\s*\.\./ # this is a special case of 'end).."some string"'
      || /^else(if)?\b/ && /\bend$/) {
    $nextIndent = $currIndent = $currIndent - 1;
  }
  # keep the level; decrease the current indentation; keep the next one
  elsif (/^else\b/ 
      || /^elseif\b/) {
    ($nextIndent, $currIndent) = ($currIndent, $currIndent-1);
  }

  my $brackets = y/(// - y/)//; # capture unbalanced brackets
  my $curly = y/{// - y/}//; # capture unbalanced curly brackets

  # close (curly) brackets if needed
  $currIndent += $curly if $curly < 0 && /^\}/; 
  $currIndent += $brackets if $brackets < 0 && /^\)/; 

  warn "WARNING: negative indentation at line $.: $orig\n" if $currIndent < 0;

  print((length($orig) ? (INDENT x $currIndent) : ''), $orig, "\n")
    if $prevLength > 0 || length($orig) > 0; # this is to collapse empty lines

  $nextIndent += $brackets + $curly;

  $currIndent = $nextIndent;
  $prevLength = length($orig);
}

warn "WARNING: positive indentation at the end\n" if $nextIndent > 0;
