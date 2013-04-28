=begin
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a² + b² = c²
For example, 3² + 4² = 9 + 16 = 25 = 5².

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
=end

soma = 1000
resposta = nil

catch :sair do
  ((soma - 3) / 3).downto(3) do |a|
    ((soma - 1 - a) / 2).downto(a + 1) do |b|
      c = soma - a - b
      if c*c == a*a + b*b
        resposta = a*b*c
        throw :sair
      end
    end
  end
end

p resposta
