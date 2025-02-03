#!/usr/bin/env ruby
## Make a script to generate NHS number just as an excerise. This shows me how much easier ruby is over bash
##
## Create a random number seven digits long, pad with 9s to make it 10 digit long, 
## make it a reserved number (starting with 999) and format it to 334.
##
## Rob Carmichael - Jan 25

args = ARGV
if args.size!=0 then
  puts "Usage: ruby nhsnumber.rb 
        Generates a random NHS number in the reserved range"
  exit 0
end

number = rand(0000001..9999999)
pnumber = number.to_s.rjust(10, "9")
print pnumber[0,3] + " " + pnumber[3,3] + " " + pnumber[5,4] + "\n"

# Obviously i could put this in a variable instead of just printing it with spaces
#
# Selecting from an array is like variable[X,Y] where X is the starting digit and Y is the # of digits to use
