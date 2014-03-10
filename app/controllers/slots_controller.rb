class SlotsController < ApplicationController
  doorkeeper_for :all
  
  def index
  	@product = Product.find(params[:product_id])
  	@slots = @product.slots.all
  	render json: @slots, status: :ok
  end

  def show
  	@product = Product.find(params[:product_id])
  	@slot = @product.slots.find(params[:id])
  	render json: @slot, status: :ok
  end

  def available
  	@product = Product.find(params[:product_id])
  	@slots = @product.slots
  	@available_slots = @slots.where("capacity > 0")
  	render json: @available_slots, status: :ok
  end
end
