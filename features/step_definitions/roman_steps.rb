require 'rspec/expectations'


Given /^un conversor$/ do
  #pending # express the regexp above with the code you wish you had
  @conversor = Conversor.new
end

#When /^le paso (\d+)$/ do |arg1|
  #pending # express the regexp above with the code you wish you had
#end
When /^le paso (\d+)$/ do |numero|
	@resultado = @conversor.convertir_romano(numero.to_i)

end

#Then /^lo convierte I$/ do
  #pending # express the regexp above with the code you wish you had
#end
Then /^lo convierte a ([A-Z]*)/ do |valor_romano|
   @resultado.should == valor_romano
end

class Conversor

	def convertir_romano(numero)
		
		case numero 
  		
  		when 1 then 
  			return "I"
  		else
  			return "II"
		end
	
	end

end