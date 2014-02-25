module Fuelr
	class ProductApi < Grape::API

		resource "products" do
			get do
				Product.all
			end
		end

	end
end