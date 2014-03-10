require 'spec_helper'

describe SlotsController do

	let(:token) { double :accessible? => true }

	before do
		controller.stub(:doorkeeper_token) { token }
		@product = FactoryGirl.create(:product)
	end

	describe "GET /api/v1/products/1/slots/available" do

		context "with no availability" do
			it "returns an empty list" do
				get "/api/v1/products/1/slots/available"
				expect(JSON.parse(response.body)).to eq []
			end
		end

		context "with one available" do

			before do
				FactoryGirl.create :slot, product: @product
				FactoryGirl.create :unavailable_slot, product: @product
			end

			it "returns one available slot" do
				get "/api/v1/products/1/slots/available"
				expect(JSON.parse(response.body).length).to be(1)
			end

			it "allows the customer to book a slot" do
				get "/api/v1/products/1/slots/available"
				slot = JSON.parse(response.body).first
				# fetch the first slot from the result, store it's id
				# TODO oauth2 http://blog.yorkxin.org/posts/2013/11/05/oauth2-tutorial-grape-api-doorkeeper-en
				post "/api/v1/slots/#{slot['id']}/appointments"
				response.status.should be(201)
			end
		end

	end
end