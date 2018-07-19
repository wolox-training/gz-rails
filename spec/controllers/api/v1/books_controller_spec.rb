require 'rails_helper'

describe BooksController, type: :controller do
  describe '#index' do
    context 'when fetching all the books' do
      let(:books) { create_list(:book, 5) }

      before do
        get :index
      end

      it 'responses with the books json' do
        expect(response.body.to_json) =~ JSON.parse(books.to_json)
      end

      it 'responds with 200 status' do
        expect(response).to have_http_status(:ok)
      end
    end
  end

  describe '#show' do
    context 'when fetching book' do
      let(:book) { create(:book) }

      before do
        get :show, params: { id: book.id }
      end

      it 'responses with the book json' do
        expect(response.body.to_json) =~ JSON.parse(book.to_json)
      end

      it 'responds with 200 status' do
        expect(response).to have_http_status(:ok)
      end
    end

    context 'with a non existing id' do
      it 'responds with 404 status' do
        get :show, params: { id: 6 }
        expect(response).to have_http_status(:not_found)
      end
    end
  end
end
