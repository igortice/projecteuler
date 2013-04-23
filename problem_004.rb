=begin
A palindromic number reads the same both ways. The largest palindrome made from the product of
two 2-digit numbers is 9009 = 91 x 99.

Find the largest palindrome made from the product of two 3-digit numbers.
=end

require './euler.rb'

p (1..1000).to_a.product((1..1000).to_a).select { |val| Euler.palindrome(val.first * val.last) }.map { |val| val.first * val.last }.uniq.max
