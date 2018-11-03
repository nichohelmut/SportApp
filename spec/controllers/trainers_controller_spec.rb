require 'rails_helper'

RSpec.describe TrainersController, type: :controller do
  let!(:user) { create(:user, role: 'trainer') }
  let!(:trainer) { create(:trainer, user_id: user.id) }

  describe 'GET index' do
    it 'assigns @trainers' do
      get :index
      expect(assigns(:trainers)).to eq([trainer])
    end
    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end
  end

  describe 'GET show' do
    it 'assigns @trainer' do
      get :show, params: { user_id: trainer.user.id, id: trainer.id }
      expect(assigns(:trainer)).to eq(trainer)
    end
  end
end