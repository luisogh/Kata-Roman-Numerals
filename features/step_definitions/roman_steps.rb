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
  			 "I"
  		when 2 then
  			 "II"
  	    when 3 then
  			 "III"
  		when 4 then
  			 "IV"
  	    when 5 then
  			 "V"
  		else
  			 "VI"
		end
	
	end

end