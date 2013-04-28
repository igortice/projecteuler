module Euler
  class Fibonacci
    def self.abaixo(limite)
      ant, pro = 1, 2
      valores = [] unless block_given?

      while ant <= limite
        block_given? ? (yield ant) : (valores << ant)
        ant, pro = pro, ant + pro
      end

      valores unless block_given?
    end
  end

  class Primo
    require 'prime'
    def self.divisores(valor)
      valor.prime_division.transpose.first
    end

    def self.posicao(valor)
      Prime.first(valor).last
    end

    def self.soma(quantidade)
      Prime.each(quantidade).inject(:+)
    end
  end

  def self.palindrome(valor)
    valor = valor.to_s
    valor == valor.reverse
  end
end
