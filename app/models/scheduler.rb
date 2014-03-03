module Fuelr
	class NoCapacityError < RuntimeError
	end
end

class Scheduler

	

	def self.create!(slot)
		if slot.capacity > 0
			# user = User.find(:user_id)
			appointment = Appointment.create!(slot: slot)
			slot.update_attribute(:capacity, slot.capacity - 1)
			# user.send_confirmation
			appointment
		else
			raise Fuelr::NoCapacityError
		end
	end

end