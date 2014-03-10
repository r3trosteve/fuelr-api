Rails.application.routes.draw do

	use_doorkeeper
	devise_for :users

	scope "/api" do
		scope "/v1" do
			resources :customers
			resources :products do
				resources :slots do
					collection do
						get :available
					end
				end
			end
			resources :slots do
				resources :appointments
			end
		end
	end

  root to: "welcome#index"

end
