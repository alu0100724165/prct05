# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Racional < Test::Unit::TestCase

	def test_suma_racional
		assert_equal(Racionales.new(4,1),Racionales.new(30,15).suma_Racionales(30,15))
	end

	def test_resta_racional
		assert_equal(Racionales.new(1,1),Racionales.new(3,2).resta_Racionales(1,2))
	end

	def test_multiplicacion_racional
		assert_equal(Racionales.new(4,1),Racionales.new(30,15).multiplicacion_Racionales(30,15))
	end

	def test_division_racional
		assert_equal(Racionales.new(60,15),Racionales.new(30,15).division_Racionales(1,2))
	end

end
