require 'spec_helper'

describe Fuelr::ProductApi do
  describe "GET /api/v1/products" do

  	context "without any product" do
	    it "returns a list of products" do
  			get "/api/v1/products"
	      response.status.should be(200)
	      expect(JSON.parse(response.body)).to eq []
	    end
  	end

  	context "with one product" do
  		before do
  		  product = Product.create! name: "Stretching", description: "Is good for you"
  		end
  		it "returns a list of products" do
  		  get "/api/v1/products"
	      response.status.should be(200)
	      result = JSON.parse(response.body)
	      expect(result.first["name"]).to eq("Stretching")
	    end
  	end
  end
end

