require 'rails_helper'

RSpec.describe CustomersController, type: :controller do
  describe 'GET index' do
    let!(:user)     { create(:user, role: 'customer') }
    let!(:customer) { create(:customer, user_id: user.id)}

    # it 'assigns @customers' do
    #   get :index
    #   expect(assigns(:customers)).to eq([customer])
    #
    # end
    # it 'renders the index template' do
    #   get :index
    #   expect(response).to render_template('index')
    # end
    #
    # it 'redirects to customer show view' do
    #   get :index
    #   expect(response).to redirect_to user_customer_path(customer)
    # end

    it 'assigns @customer' do
      get :show, params: { id: customer.id }
      expect(assigns(:customer)).to eq(customer)
    end
  end
end
