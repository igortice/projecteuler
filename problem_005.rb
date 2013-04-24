=begin
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
=end

# FORMA ELEGANTE
#p (1..20).inject(:lcm)

valor = 20

catch (:sair) do
  while true
    (1..20).each do |d|
      break if valor % d != 0
      throw :sair if d == 20 && valor % d == 0
    end
    valor += 20
  end
end

p valor
