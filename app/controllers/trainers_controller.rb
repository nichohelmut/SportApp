class TrainersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @user = current_user
    @trainers = Trainer.all
  end

  def show
    @trainer = Trainer.find(params[:id])
  end
end
