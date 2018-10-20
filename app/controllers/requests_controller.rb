class RequestsController < ApplicationController

  def new
    @trainer = Trainer.find(params[:trainer_id])
    @request = Request.new

  end

  def create
    @request = Request.new(request_params)
    @request.user_id = current_user.id
    @request.trainer = @request
    @request.save
    redirect_to users_trainers_path
  end

  private

  def  request_params
    params.require(:request).permit(:customer_id, :trainer_id)
  end

end
