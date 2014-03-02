module Fuelr
	class ProductApi < Grape::API

		resource "products" do
			get do
				Product.all
			end

			segment '/:product_id' do
				get '/available_slots' do
					# params[:product_id]
					@product = Product.find(params[:product_id])
					@product.slots.where("capacity > 0")
				end			
			end

		end

	end
end