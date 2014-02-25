require 'spec_helper'

describe Fuelr::ProductApi do
  describe "GET /api/v1/products" do
    it "returns a list of products" do
      response.status.should be(200)
      expect(JSON.parse(response.body)).to eq []
    end
  end
end

