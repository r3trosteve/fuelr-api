require 'spec_helper'

describe ProductsController do
  describe "GET /api/v1/products" do

    let(:token) { double :accessible? => true }
    before do
      controller.stub(:doorkeeper_token) { token }
    end

  	context "without any product" do
      
	    it "returns a list of products" do
  			get "/api/v1/products"
	      response.status.should be(200)
	      expect(JSON.parse(response.body)).to eq []
	    end
  	end

  	context "with one product" do
  		before do
  		  # product = Product.create!(:product)
        product = FactoryGirl.create :product
  		end
  		it "returns a list of products" do
  		  get "/api/v1/products"
	      response.status.should be(200)
	      result = JSON.parse(response.body)
	      expect(result.first["name"]).to eq("Core workout for pregnant developers")
	    end
  	end
  end
end

