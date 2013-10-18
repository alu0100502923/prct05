#!/usr/local/rvm/rubies/ruby-2.0.0-p247/bin/ruby
# Implementar en este fichero la clase para crear objetos racionales
# Juan Antonio Oliva Pérez


require "./gcd.rb"

class Fraccion

   def initialize(n,d)
        @n = n
        @d = d
   end

   def mcm(a,b)        
      (a/gcd(a,b))*b
   end
        
   def to_s
      return "#{@n}/#{@d}"
   end

   def suma(a,b)
      d = mcm(@d,b)
      n = ((d/@d) * @n) + ((d/b) * a)
      return Fraccion.new(n, d)
   end

   def resta(a,b)
      d = mcm(@d,b)
      n = ((d/@d) * @n) - ((d/b) * a)
      return Fraccion.new(n, d)       
   end

   def producto(a,b)
      n = @n * a
      d = @d * b
      return Fraccion.new(n, d)
   end

   def division(a,b)        
      n = @n*b
      d = @d*a
      return Fraccion.new(n, d)
   end

end

