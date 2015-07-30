require 'spec_helper'
 
describe WaterSample do
	before :each do
    	@sample = WaterSample.find(1)
	end 

	describe "#sample1" do
	    it "returns the correct site" do
	        expect(@sample.site).to eql "LA Aquaduct Filteration Plant Effluent"
	    end

	    it "returns the correct hash" do
	    	expect(@sample.to_hash(true)).to eql( {:id=>1, :site=>"LA Aquaduct Filteration Plant Effluent", :chloroform=>0.0010400000028312206, :bromoform=>0.0, :bromodichloromethane=>0.0014900000533089042, :dibromichloromethane=>0.002749999985098839, :factor_1=>0.005, :factor_2=>0.0053, :factor_3=>0.0045, :factor_4=>0.0062})
	    end

	    it "returns the correct factor" do
	    	expect(@sample.factor(1)).to eql(0.005)
	    end
	end

end