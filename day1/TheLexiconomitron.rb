class Lexiconomitron

	def eat_t (input)
		word_array       = input.downcase.split("") #split devuelve array
		array_without_t  = word_array.delete_if{|x| x=="t"}
		string_without_t = array_without_t.join
	end

	def shazam input
		array_to_string = input.join(" ")
		string_reverse  = array_to_string.reverse
		string_split    = string_reverse.split
		array_reverse   = string_split.reverse
		array_final     = [array_reverse.first,array_reverse.last]
		array_final.map{|word| eat_t(word)}
		
	end

	def oompa_loompa(input)
		input.select{|word| word.size <= 3}.map{|word| eat_t(word)}
	end
end

RSpec.describe Lexiconomitron do 
	describe "#eat_t" do
		it "removes every letter t from de input" do
			@lexi = Lexiconomitron.new 
			expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
		end
	end 
	describe "shazam" do
		it "reverse the letters within the words" do
			@lexi = Lexiconomitron.new 
			expect(@lexi.shazam(["this","is","a","boring","test"])).to eq(["sih","se"])
		end
	end
	describe "oompa_loompa" do
			it "takes the ones which size is three characters or less in the same order" do
			@lexi = Lexiconomitron.new 
			expect(@lexi.oompa_loompa(["To", "the", "final"])).to eq(["o","he"])	
		end
	end
end


############################################
#o podemos poner en la línea 21 esto
#RSpec.describe Lexiconomitron do 
#	before :each do
#		@lexi = Lexiconomitron.new
#	end

#######################################
#metodo eat_t
#def eat_t(words)
#		words.gsub(/[tT]/, "")
#	end



