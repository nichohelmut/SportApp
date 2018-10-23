class RequestsController < ApplicationController

  before_action :set_current_user

  def show
    @trainer = Trainer.find(params[:trainer_id])
    @request = Request.find(params[:id])
    @trainer = @request.trainer
  end

  def new
    @trainer = Trainer.find(params[:trainer_id])
    @request = Request.new
  end

  def create
    @trainer = Trainer.find(params[:trainer_id])
    @request = Request.create(request_params)
    @request.customer_id = current_user.customer.id
    @request.trainer_id = @trainer.id
    @request.save
    raise
    redirect_to user_trainer_request_path(@request.trainer_id, @request)
  end

  private

  def  request_params
    params.require(:request).permit(:customer_id, :trainer_id, :state)
  end

end
