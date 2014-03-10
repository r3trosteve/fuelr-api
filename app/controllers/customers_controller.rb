class CustomersController < ApplicationController
	doorkeeper_for :all
	
  def index
  	@customers = User.all
  	render json: @customers, status: :ok
  end

  def show
  	@customer = User.find(params[:id])
  	render json: @customer, status: :ok
  end

end
