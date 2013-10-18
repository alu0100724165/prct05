def buscar_Multiplo(num, den, multi)
			
		if (@num.to_i > 1 && @den.to_i > 1)
			
			while  (@resto!=0 && @multi <= @den.to_i && @multi <= @num.to_i)
				@multi=@multi+1		
				@resto=(@num.to_i).modulo(@multi.to_i)
				
			#Calcula mcm de el numerador
			end
				if ((@den.to_i).modulo(@multi.to_i)== 0) #se comprueba que sea tambien del denominador
					puts @multi
					sleep(2)					
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
	x=buscar_Multiplo(num,den, multi)	
	valor_reducido=Array.new(2)	
	
	if x > 1	
		num=(num.to_i/x.to_i)
		den=(den.to_i/x.to_i)
		reducir_Minimo(num,den,x.to_i)
	else
		
		valor_reducido[0]=num
		valor_reducido[1]=den
		puts valor_reducido
	end
		
end

puts "Numerador:"
STDOUT.flush  
num = gets.chomp
puts "Denominador:"
STDOUT.flush  
den = gets.chomp

reducir_Minimo(num,den,1)


