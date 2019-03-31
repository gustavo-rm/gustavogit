class Cigarros

  attr_accessor :anos, :cigarros_dia, :preco_carteira

  def initialize(anos, cigarros, preco)
    @anos, @cigarros_dia, @preco_carteira = anos, cigarros, preco
  end

  def calculaTotal
    ((@anos.to_f*365.0)*@cigarros_dia.to_f/20.0)*@preco_carteira.to_f
  end

  def to_s
    "Total gasto: R$ #{calculaTotal()}"
  end
end

puts "Número de anos fumando:"
anos = gets.chomp
puts "Cigarros fumados por dia:"
cigarros = gets.chomp
puts "Preço da carteira/maço:"
preco = gets.chomp

valorTotal = Cigarros.new(anos, cigarros, preco)
puts valorTotal