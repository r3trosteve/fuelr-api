require 'spec_helper'

describe Scheduler do

	describe "#create!" do
		let(:slot) { FactoryGirl.create :slot }

		it "creates an appointment" do
			expect{
				Scheduler.create!(slot)
			}.to change(Appointment, :count).by(1)
		end

		it "decrements the slot's capacity" do
		  expect{
				Scheduler.create!(slot)
			}.to  change{slot.capacity}.by(-1)
		end

		it "returns the appointment" #do
		# 	expect{
		# 		Scheduler.create!(slot)
		# 	}.should respond_with(Appointment) 
		# end


		it "sends a confirmation email"
	end

end