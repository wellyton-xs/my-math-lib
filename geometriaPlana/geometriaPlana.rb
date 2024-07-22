############### QUADRILATEROS ###############
class Quadrilatero
	attr_accessor :nl

	def initialize(numeroDeLados = 4)
		@nl = numeroDeLados
	end

end

class Quadrado < Quadrilatero
	def initialize(lado = 1)
		@l = lado
	end

 	def area
		@l ** 2
 	end
end

class Paralelogramo < Quadrilatero
	def initialize(base, altura)
		@b = base
		@h = altura
	end

	def area
		@b * @h
	end
end

class Retangulo < Paralelogramo
end

class Trapezio < Quadrilatero
	def initialize(baseMaior, baseMenor, altura)
		@bg = baseMaior
		@b = baseMenor
		@h = altura
	end

	def area
		((@bg + @b) * @h) / 2
	end
end

class Losango < Quadrilatero
	def initialize(dMaior, dMenor)
		@dg = dMaior
		@d = dMenor
	end

	def area
		(@dg * @d) / 2
	end
end

############### TRIANGULOS ###############

class TrianguloReto
	def initialize(base, altura)
		@b = base
		@h = altura
	end

	def area
 		(@b * @h) / 2
 	end
end

class TrianguloRetangulo < TrianguloReto
	def initialize(cateto1, cateto2, hipotenusa)
		@c1 = cateto1
		@c2 = cateto2
		@h = hipotenusa
	end

	def calc_hipotenusa
		Math.sqrt((@c1 ** 2) + (@c2 ** 2))
	end
end

############### CIRCULO  ###############

class Circulo
	def initialize(raio)
		@pi = 3.141592653589793238
		@r = raio
	end

	def area
		@pi * (@r ** 2)
	end

	def circunferencia
		2 * @pi * @r
	end
end

class SetorCircular
	def initialize(raio, angulo)
		@pi = 3.141592653589793238
		@r = raio
		@a = angulo
	end

	def area
		(@a / 360) * (@pi * (@r ** 2))
	end
end
