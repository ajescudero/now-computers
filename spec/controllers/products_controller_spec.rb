require "rails_helper"
require_relative "../support/devise"

RSpec.describe ProductsController, type: :controller do
  render_views

    describe "GET index" do
      before :all do
        @user = create :user
        @product = create :product
    end

    context "when user logged" do
      login_user
      it "returns a 200" do
        get :index
        expect(response).to have_http_status(:success)
        expect(response).to render_template(:index)
      end

      it 'should render title' do
        get :index
        expect(response.body).to match /<h1>Products/m
      end

      # delete product warning tells product exist
      it 'should render products' do
        get :index, :params => { :store_id => @product.store_id }
        expect(response.body).to match /Are you sure?/m
      end
    end

    context "when client visits" do
      logout_user
      it "returns a 200" do
        get :index
        expect(response).to have_http_status(:success)
        expect(response).to render_template(:index)
      end

      it 'should render title' do
        get :index
        expect(response.body).to match /<h1>Products/m
      end

      it 'should not allow to delete products' do
        store = Store.first
        get :index, :params => { :store_id => store.id }
        expect(response.body).not_to match /Are you sure/m
      end

      it 'should not show products' do
        store = Store.first
        Product.destroy_all
        get :index, :params => { :store_id => store.id }
        expect(response.body).to match /<p> No products available/m
      end
    end
  end

end