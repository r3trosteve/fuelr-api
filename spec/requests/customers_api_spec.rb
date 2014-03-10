require 'spec_helper'

# let(:token) { double :accessible? => true }
# before do
#   controller.stub(:doorkeeper_token) { token }
# end

describe CustomersController do
  describe "create a new user who is a customer" do
    it "creates a user" do
      post '/api/v1/customers', {email: "stevebschofield@gmail.com", first_name: "Steve", last_name: "Schofield", password: "helloworld", password_confirmation: "helloworld"}
      #response.status.should be(201)
      #expect(User.where(email: "stevebschofield@gmail.com").count).to be(1)
    end
  end
end