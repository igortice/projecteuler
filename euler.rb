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
end