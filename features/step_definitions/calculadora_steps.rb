# encoding: utf-8

require 'calculadora'

Before do
  @calc = Calculadora.new
end

After do
end

Dado /que eu digitei (\d+) na calculadora/ do |n|
  @calc.push n.to_i
end

Quando /eu aperto o botão de soma/ do
  @resultado = @calc.soma
end

Quando /eu aperto o botão de multiplica/ do
  @resultado = @calc.multiplica
end

Então /o resultado na calculadora deve ser (\d+)/ do |resultado_esperado|
  @resultado.should == resultado_esperado.to_i
end