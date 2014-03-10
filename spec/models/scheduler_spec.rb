
require 'spec_helper'

describe Scheduler do

	describe "#create! succesfully" do
		let(:slot) { FactoryGirl.create :slot }

		it "creates an appointment" do
			expect{
				Scheduler.create!(slot)
			}.to change(Appointment, :count).by(1)
		end

		it "decrements the slot's capacity" do
		  expect{
				Scheduler.create!(slot)
			}.to change{slot.capacity}.by(-1)
		end

		it "returns an appointment" do
			expect(Scheduler.create!(slot).class).to eq(Appointment)
		end

		it "sends a confirmation email" do
			expect{
        Scheduler.create!(slot)
			}.to change{ActionMailer::Base.deliveries.length}.by(1)

			# perform magics
			#emails = ActionMailer::Base.deliveries.map{|email| email.to.first}
			#expect(emails).to include("recipient@example.com")
		end
		  
		#end

	end

	describe "#create! when no capacity" do
		let(:slot) { FactoryGirl.create :unavailable_slot }

		it "raise an error" do
			expect{Scheduler.create!(slot)}.to raise_error(Fuelr::NoCapacityError)
		end
	end

end