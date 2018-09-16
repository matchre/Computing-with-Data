cat mobyDick.txt | head -n 1  # first line

bzip2 -v mobyDick.txt # compress .txt to .txt.bz2

# first line of compressed file
cat mobyDick.txt.bz2 | head -n 1

# using bzcat to display compressed file
bzcat mobyDick.txt.bz2 | head -n 1
