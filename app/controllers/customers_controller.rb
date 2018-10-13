class CustomersController < ApplicationController

  skip_before_action :authenticate_user!, only: %i[index]

  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end
end
