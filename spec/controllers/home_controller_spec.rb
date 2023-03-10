require 'rails_helper'
RSpec.describe HomeController, type: :controller do
    describe 'GET #index' do
      it 'assigns the name variable' do
        get :index
        expect(assigns(:name)).to eq 'name'
      end
  
      it 'renders the index template' do
        get :index
        expect(response).to render_template :index
      end
    end
  end