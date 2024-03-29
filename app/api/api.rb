class API < Grape::API

	prefix "api"
	version "v1"
	format :json

	mount Fuelr::ProductApi
	mount Fuelr::CustomerApi
	mount Fuelr::SlotApi

end