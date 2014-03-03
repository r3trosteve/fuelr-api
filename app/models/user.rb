class User < ActiveRecord::Base
	has_many :appointments, through: :slots
	has_secure_password

	def send_confirmation
		SchedulerMailer.confirm_slot(self).deliver
	end

end
