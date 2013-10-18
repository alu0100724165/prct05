#!/usr/bin/ruby


def buscar_Multiplo(num, den, multi)
		
	if num.to_i > 1 && den.to_i > 1
		resto=1
		while  (resto!=0 && multi <= den.to_i && multi <= num.to_i)
			multi=multi+1		
			resto=(num.to_i).modulo(multi.to_i)
		#Calcula mcm de el numerador
		end
			if ((den.to_i).modulo(multi.to_i))==0#se comprueba que sea tambien del denominador
				return multi	
			else
				buscar_Multiplo(num, den, multi)
			end
	else 	
		multi=1
		return multi
	end
end


def reducir_Minimo(num, den, multi)
	
	reducido=Array.new(2)	
	x=buscar_Multiplo(num,den, multi)	
	if x > 1	
		num=(num.to_i/x.to_i)
		den=(den.to_i/x.to_i)
		reducir_Minimo(num,den,x)
	else
		reducido[0]=num
		reducido[1]=den
		return reducido
	end
	
end

puts "Numerador"
STDOUT.flush
numerador=gets.chomp

puts "Denominador"
STDOUT.flush
denominador=gets.chomp
puts reducir_Minimo(numerador, denominador, 1)




