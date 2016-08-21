RSpec.describe "check_password" do
before :each do
	@check = PasswordChecker.new "victorfernandez@gmail.com", "Madrid#1981"
end
	it "check password has letters downcase and upcase"  do
		expect(@check.check_letter).to eq (true)
	end
		it "check if the password has numbers"  do
		expect(@check.check_numbers).to eq (true)
	end
		it "check if the password has symbols"  do
		expect(@check.check_symbols).to eq (true)
	end
		it "check if the password lenght > 7"  do
		expect(@check.check_length).to eq (true)
	end
		it "check password has the name of an email or dominion"  do
		expect(@check.check_password).to eq (true)
	end
end