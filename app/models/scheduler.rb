module Fuelr
	class NoCapacityError < RuntimeError
	end
end

class Scheduler

	def self.create!(slot, user)
		if slot.capacity > 0
			appointment = Appointment.create!(slot: slot, user: user)
			slot.update_attribute(:capacity, slot.capacity - 1)
			SchedulerMailer.confirm_slot(appointment).deliver
			appointment
		else
			raise Fuelr::NoCapacityError
		end
	end

end