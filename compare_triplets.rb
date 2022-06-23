#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'compareTriplets' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts following parameters:
#  1. INTEGER_ARRAY a
#  2. INTEGER_ARRAY b
#

def compareTriplets(a, b)
    # Write your code here
    
  aliceScores = a;
  bobScores = b;

  # output variables 
  aliceFinal = 0 
  bobFinal = 0

  # each with index automatically starts at zero
  # aliceScore is the current score for alice with each loop
  aliceScores.each_with_index do |aliceScore, i|
    if aliceScore > bobScores[i]
      aliceFinal += 1 
    elsif aliceScore < bobScores[i]
      bobFinal += 1
    end
  end 

  # returns the two scores separated by a string space
  return aliceFinal, bobFinal

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

a = gets.rstrip.split.map(&:to_i)

b = gets.rstrip.split.map(&:to_i)

result = compareTriplets a, b

fptr.write result.join " "
fptr.write "\n"

fptr.close()
