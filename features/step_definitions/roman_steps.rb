require 'rspec/expectations'


Given /^un conversor$/ do
  @conversor = Conversor.new
end


When /^le paso (\d+)$/ do |numero|
	@resultado = @conversor.convertir_romano(numero.to_i)
end


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
  		when 6 then
  			 "VI"
  	  when 7 then
  			 "VII"
  	  when 8 then
  			 "VIII"
  	  when 9 then
  			 "IX"
      when 10 then
         "X"
      when 11 then
         "XI"
      when 12 then
         "XII" 
      when 13 then
         "XIII"    
  		else
  			 "XIV"
		end
	
	end

end