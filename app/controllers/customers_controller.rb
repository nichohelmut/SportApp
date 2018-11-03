class CustomersController < ApplicationController

  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_customer, only: %i[show edit update]

  def index
    @user = current_user
    @customers = Customer.all
  end

  def show
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

  def edit
  end

  def update
    @customer.update(params[:customer])
    if @customer.update(customer_params)
      redirect_to customer_path(@customer)
    else
      render :edit
    end
  end

  private

  def set_customer
    @customer = Customer.find(params[:id])
  end

  def customer_params
    params.require(:customer).permit( :name, :email, :description, :picture)
  end

end
