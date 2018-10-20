class MyDevise::RegistrationsController < Devise::RegistrationsController

  def create
    super
    if resource.save
      @customer = Customer.new
      @customer.user_id = resource.id
      @customer.save
    end
  end

end