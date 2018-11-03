class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def set_current_user
    User.current = current_user
  end

  def after_sign_in_path_for(resource)
    if resource.customer
      trainer_request_path(resource.customer.requests.last.trainer.id, resource.customer.requests.last.id)
    else
      root_path
    end
  end

end
