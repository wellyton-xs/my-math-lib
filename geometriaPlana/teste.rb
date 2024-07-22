require 'minitest/autorun'
require_relative 'geometriaPlana'

class TestQuadrado < Minitest::Test
	def setup
		@q = Quadrado.new(2)
	end

	def test_quadrado
		assert_equal 4, @q.area
	end
end

class TestParalelogramo < Minitest::Test
	def setup
		@p = Paralelogramo.new(2, 3)
	end

	def test_paralelogramo
		assert_equal 6, @p.area
	end
end

class TestRetangulo < Minitest::Test 
	def setup
		@r = Retangulo.new(2,3)
	end

	def test_retangulo
		assert_equal 6, @r.area
	end
end

class TestTrapezio < Minitest::Test
	def setup
		@t = Trapezio.new(4, 2, 3)
	end

	def test_trapezio
		assert_equal 9, @t.area
	end
end


class TestTrianguloReto < Minitest::Test
	def setup
		@tr = TrianguloReto.new(2, 4)
	end

	def test_area
		assert_equal 4, @tr.area
	end
end


class TestTrianguloRetangulo < Minitest::Test
	def setup
		@tR = TrianguloReto.new(2, 4)
	end

	def test_area
		assert_equal 4, @tR.area
	end

	def calc_hipotenusa_test
		assert_equal 4.47, @tR.calc_hipotenusa
	end
end

class TestLosango < Minitest::Test
	def setup
		@l = Losango.new(4, 2)
	end

	def test_area
		assert_equal 4, @l.area
	end
end

class TestCirculo < Minitest::Test
	def setup
		@c = Circulo.new(5)
	end

	def test_area
		assert_equal 78.53981633974483, @c.area
	end

	def test_circunferencia
		assert_equal 31.41592653589793, @c.circunferencia
	end
end

class TestSetorCircular < Minitest::Test
	def setup
		@sc = SetorCircular.new(5.0, 45.0)
	end

	def test_area
		assert_equal 9.81747704246810387, @sc.area
	end
end
