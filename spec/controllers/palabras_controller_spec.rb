require 'rails_helper'

describe PalabrasController do 

  describe 'GET index' do
    before { get :index }

    context 'when palabras are present' do
      let!(:palabra) { create(:palabra) }

      it 'assigns @palabras' do
        expect(assigns(:palabras)).to eq([palabra])
      end

      it 'renders the index template' do
        expect(response).to render_template(:index)
      end

      it 'expect success http response' do
        expect(response).to have_http_status(:success)
      end
    end

    context 'when no palabras present' do
      it 'assigns @palabras' do
        expect(assigns(:palabras)).to eq([])
      end

      it 'renders the index template' do
        expect(response).to render_template(:index)
      end

      it 'expect success http response' do
        expect(response).to have_http_status(:success)
      end
    end
  end
end