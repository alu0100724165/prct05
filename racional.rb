#!/usr/bin/ruby

require 'rational'

class Racionales

        def initialize(numerador, denominador)

                @num=numerador
                @den=denominador
                @multi=1
                @valor_reducido=Array.new(2)
                @numero_Racional
                @numero_Racional2
                @resto=1
                reducir_Minimo(@num,@den,@multi)                
                @numero_Racional=Rational(@valor_reducido[0].to_i,@valor_reducido[1].to_i)
        end


        def buscar_Multiplo(num, den, multi)
                        
                if (@num.to_i > 1 && @den.to_i > 1)
                        
                        while (@resto!=0 && @multi <= @den.to_i && @multi <= @num.to_i)
                                @multi=@multi+1                
                                @resto=(@num.to_i).modulo(@multi.to_i)
                        #Calcula mcm de el numerador                
                
                        end
                                if (@multi > @den.to_i) # Esto sucede cuando no tienen minimo común multiplo
                                        return 0
                                elsif ((@den.to_i).modulo(@multi.to_i)== 0) #se comprueba que sea tambien del denominador
                                        return @multi
                                else
                                        @resto=1                                
                                        buscar_Multiplo(@num,@den,@multi)
                                end
                else         
                                                
                        @multi=1
                        return @multi
                end
        end        


        def reducir_Minimo(num, den, multi)
                x=buscar_Multiplo(@num,@den, @multi)        
                
                if x > 1        
                        @num=(@num.to_i/x.to_i)
                        @den=(@den.to_i/x.to_i)
                        reducir_Minimo(@num,@den,x.to_i)
                else
                        @valor_reducido[0]=@num
                        @valor_reducido[1]=@den
                end
                
        end

        def to_s #Representar numeros relacionales al minimo
                

                return @numero_Racional        
        end

        def suma_Racionales(num1,den1)
                racional1=Racionales.new(num1,den1)
                
                @numero_Racional2=racional1.to_s
                puts"-----------------"                
                puts @numero_Racional
                puts "+"
                puts @numero_Racional2
                puts "-------------------"
                resultado=@numero_Racional + @numero_Racional2
                puts resultado
		resultado2 = Racionales.new(resultado.numerator, resultado.denominator)
        end

        def multiplicacion_Racionales(num1,den1)
                racional1=Racionales.new(num1,den1)
                
                @numero_Racional2=racional1.to_s   	            
                puts"-----------------"                
                puts @numero_Racional
                puts "x"
                puts @numero_Racional2
                puts "-------------------"
                resultado=@numero_Racional * @numero_Racional2
                puts resultado
		resultado2 = Racionales.new(resultado.numerator, resultado.denominator)
        end
        
        def division_Racionales(num1,den1)
                racional1=Racionales.new(num1,den1)         
                @numero_Racional2=racional1.to_s
                puts"-----------------"                
                puts @numero_Racional
                puts "/"
                puts @numero_Racional2
                puts "-------------------"
                resultado=@numero_Racional / @numero_Racional2
                puts resultado
		resultado2 = Racionales.new(resultado.numerator, resultado.denominator)
        end

        def resta_Racionales(num1,den1)
                racional1=Racionales.new(num1,den1)
                
                @numero_Racional2=racional1.to_s
                puts"-----------------"                
                puts @numero_Racional
                puts "-"
                puts @numero_Racional2
                puts "-------------------"
                resultado=@numero_Racional - @numero_Racional2
                puts resultado
		resultado2 = Racionales.new(resultado.numerator, resultado.denominator)
        end

	def numerador
		@num
	end

	def denominador
		@den
	end

	def == (other) # Operador para el test.
		return (@num == other.numerador && @den == other.denominador)
	end

end
=begin
puts "Numerador:"
STDOUT.flush
num = gets.chomp
puts "Denominador:"
STDOUT.flush
den = gets.chomp

racional=Racionales.new(num,den)
puts racional.to_s

puts "Numerador2:"
STDOUT.flush
num1 = gets.chomp
puts "Denominador2:"
STDOUT.flush
den1 = gets.chomp

puts "\nAhora la suma"

racional.suma_Racionales(num1,den1)

puts "\nAhora la multiplicacion"

racional.multiplicacion_Racionales(num1,den1)

puts "\nAhora la resta"

racional.resta_Racionales(num1,den1)

puts "\nAhora la division"

racional.division_Racionales(num1,den1)
=end
