class User < ActiveRecord::Base
	has_many :appointments, through: :slots
	has_secure_password

end
