require 'spec_helper'

describe Fuelr::ProductApi do

	before do
		@product = FactoryGirl.create(:product)
	end

	describe "GET /api/v1/products/1/available_slots" do

		context "with no availability" do
			it "returns an empty list" do
				get "/api/v1/products/1/available_slots"
				expect(JSON.parse(response.body)).to eq []
			end
		end

		context "with one available" do

			before do
				FactoryGirl.create :slot, product: @product
				FactoryGirl.create :unavailable_slot, product: @product
			end

			it "returns one available slot" do
				get "/api/v1/products/1/available_slots"
				expect(JSON.parse(response.body).length).to be(1)
			end
		end

	end
end