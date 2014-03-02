module Fuelr
	class SlotApi < Grape::API

		resource "slots" do
			segment '/:slot_id' do
				post '/appointments' do
					# params[:product_id]
					@slot = Slot.find(params[:slot_id])
				    Scheduler.create!(@slot)
				    # once we have auth:
				    # Scheduler.create!(@slot, current_user)
				end			
			end

		end
 	end
end