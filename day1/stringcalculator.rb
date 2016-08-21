class StringCalculator

	def add(input)
		sum = 0
		if input.split(",").size != 1
			input.split(",").each do |s|
				
			end
		else
			input.split(" ").each do |s|
				sum += s.to_i
			end
		end
		sum
	end
end

#calculator = StringCalculator.new
#calculator.add("123")


RSpec.describe "String Calculator Test" do 
	it "zero digits" do
		number = ""
		expect(StringCalculator.new.add("")).to eq(0)
	end

	it "returns number if I receive string with one number" do
		expect(StringCalculator.new.add("1")).to eq(1)
	end

	it "returns number if I receive string with one number" do
		expect(StringCalculator.new.add("5")).to eq(5)
	end

	it "returns number if I receive string with two numbers" do
		expect(StringCalculator.new.add("1,2")).to eq(3)
	end


	it "strings numbers separated by spaces" do
		expect(StringCalculator.new.add("1 2 3")).to eq(6)
	end
end






