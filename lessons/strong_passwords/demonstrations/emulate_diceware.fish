#! /usr/bin/fish
set -l passphrase
while test (count $passphrase) -ne 6
  set -l dice (cat /dev/random | tr -dc '1-6' | fold -w 5 | head -1)
  set -a passphrase (grep -oP "(?<=$dice ).+" (locate 7776palavras-numeradas-2e.txt) 2>/dev/null)
end
echo $passphrase