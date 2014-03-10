module Fuelr

	class SlotApi < Grape::API

		resource "slots" do
			segment '/:slot_id' do
				post '/appointments' do
					# params[:product_id]
					@slot = Slot.find(params[:slot_id])

					begin
				  	# Scheduler.create!(@slot)
				    Scheduler.create!(@slot, current_resource_owner)
				  rescue Fuelr::NoCapacityError
				  	redirect_to :action => 'forbidden', :status => 403
				  end
				end			
			end

			private

			  def current_resource_owner
			    User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
			  end

		end
 	end
end