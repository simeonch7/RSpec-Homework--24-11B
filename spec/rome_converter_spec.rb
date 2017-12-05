require 'rspec'
require(File.expand_path('../lib/rome_converter.rb', File.dirname(__FILE__)))
#include RSpec

RSpec.describe  do
		describe "convert_to_rome" do
		before do
			@converter = RomeConverter.new()
		end
		#---------------------------------------------------------------------------
				#Section for rome -> arab
		it "gets I and returns 1" do
			expect(@converter.to_dec("I")).to eq 1
		end
		
		it "gets VIII and returns 8" do
			expect(@converter.to_dec("VIII")).to eq 8
		end
		
		it "gets LXIX and returns 69" do
			expect(@converter.to_dec("LXIX")).to eq 69
		end
		
		it "gets C and returns 100" do
			expect(@converter.to_dec("C")).to eq 100
		end
		
		it "gets CDLV and returns 455" do
			expect(@converter.to_dec("CDLV")).to eq 455
		end
		
		it "gets DCCXLIX and returns 749" do
			expect(@converter.to_dec("DCCXLIX")).to eq 749
		end
		
		it "gets MCCCXCVIII and returns 1398" do
			expect(@converter.to_dec("MCCCXCVIII")).to eq 1398
		end
		
		it "gets MDI and returns 1501" do
			expect(@converter.to_dec("MMMCMXCIX")).to eq 1501
		end
		
		it "gets MM and returns 2000" do
			expect(@converter.to_dec("MM")).to eq 2000
		end
		
		it "gets MMCDXCVIII and returns 2498" do
			expect(@converter.to_dec("MMCDXCVIII")).to eq 2498
		end
		
		it "gets MMMI and returns 3001" do
			expect(@converter.to_dec("MMMI")).to eq 3001
		end
		
		it "gets MMMCMXCIX and returns 3999" do
			expect(@converter.to_dec("MMMCMXCIX")).to eq 3999
		end
		#---------------------------------------------------------------------------
				#Section for rome <- arab
		it "gets 0 and returns emty string" do
			expect(@converter.to_rome(0)).to eq ""
		end
		
		it "gets 8 and returns VIII" do
			expect(@converter.to_rome(8)).to eq "VIII"
		end
		
		it "gets 50 and returns L" do
			expect(@converter.to_rome(50)).to eq "L"
		end
		
		it "gets 89 and returns LXXXIX" do
			expect(@converter.to_rome(89)).to eq "LXXXIX"
		end
		
		it "gets 200 and returns CC" do
			expect(@converter.to_rome(200)).to eq "CC"
		end
		
		it "gets 698 and returns DCXCVIII" do
			expect(@converter.to_rome(698)).to eq "DCXCVIII"
		end
		
		it "gets 1001 and returns MI" do
			expect(@converter.to_rome(1001)).to eq "MI"
		end
		
		it "gets 1899 and returns MDCCCXCIX" do
			expect(@converter.to_rome(1899)).to eq "MDCCCXCIX"
		end
		
		it "gets 3030 and returns MMMXXX" do
			expect(@converter.to_rome(3030)).to eq "MMMXXX"
		end
		
		it "gets 3789 and returns MMMDCCLXXXIX" do
			expect(@converter.to_rome(3789)).to eq "MMMDCCLXXXIX"
		end
		
		it "gets 3999 and returns MMMCMXCIX" do
			expect(@converter.to_rome(3999)).to eq "MMMCMXCIX"
		end
	end
end
