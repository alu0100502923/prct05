#!/usr/local/rvm/rubies/ruby-2.0.0-p247/bin/ruby
# Implementar en este fichero la clase para crear objetos racionales
# Juan Antonio Oliva Pérez


require "./gcd.rb"

class Fraccion

  def initialize(n,d)
        @n = n
        @d = d
  end

       def mcd(a,b)
                  while b != 0
                            a, b = b,a % b
                  end
                  a
        end 

   def mcm(a,b)        
      (a/mcd(a,b))*b
   end
        
   def to_s
      puts "#{@n}/#{@d}"
   end

   def suma(a,b)
      d = mcm(@denominador,b)
      n = ((d/@d) * @n) + ((d/b) * a)
      puts "#{n}/#{d}"
   end

   def resta(a,b)
      d = mcm(@d,b)
      n = ((d/@d) * @n) - ((d/b) * a)
      puts "#{n}/#{d}"        
   end

   def producto(a,b)
      n = @numerador * a
      d = @denominador * b
      puts "#{n}/#{d}"
   end

   def division(a,b)        
      n = @n*b
      d = @d*a
      puts "#{n}/#{d}"
   end

end

