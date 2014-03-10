module Fuelr
	class CustomerApi < Grape::API

		resource "users" do
			params do
		      requires :email, type: String, desc: "User email address"
		      optional :first_name, type: String, desc: "User first name"
		      optional :last_name, type: String, desc: "User last name"
		      requires :password, type: String, desc: "User password"
		    end
			post do
				User.create!({
						email: 									params[:email],
						password: 							"letmeinplease",
						password_confirmation: 	"letmeinplease"
				})
			end
		end

	end
end