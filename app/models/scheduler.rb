class Scheduler

	def self.create!(slot)
		if slot.capacity > 0
			appointment = Appointment.create!(slot: slot)
			slot.update_attribute(:capacity, slot.capacity - 1)
			puts appointment
		end
	end

end