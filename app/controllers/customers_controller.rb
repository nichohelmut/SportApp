class CustomersController < ApplicationController

  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @user = current_user
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def new
    @customer = Customer.new
    @customer.user = current_user
  end

  def create
    if User.create
      @user     = User.find(params[:id])
      @customer = User.create(@user)
      @custome.save
    end
  end


  # private

  # def customer_params
  #   params.require(:customer).permit(:user, :name)
  # end
end
