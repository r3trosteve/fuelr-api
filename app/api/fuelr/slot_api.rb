module Fuelr

	class SlotApi < Grape::API

		resource "slots" do
			segment '/:slot_id' do
				post '/appointments' do
					# params[:product_id]
					@slot = Slot.find(params[:slot_id])

					begin
				  	Scheduler.create!(@slot)
				  rescue Fuelr::NoCapacityError
				  	redirect_to :action => 'forbidden', :status => 403
				  end
				  # once we have auth:
				  # Scheduler.create!(@slot, current_user)
				end			
			end

		end
 	end
end