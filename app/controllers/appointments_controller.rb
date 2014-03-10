class AppointmentsController < ApplicationController
	doorkeeper_for :all
	
	def create
		@slot = Slot.find(params[:slot_id])
		@appointment = @slot.appointments.new(user: current_user)

		if @appointment.save
		else
		end
	end
end
