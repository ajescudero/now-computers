require "rails_helper"
require_relative "../support/devise"

RSpec.describe ProductsController, type: :controller do

    describe "GET index" do
      login_user

      context "from login user" do
        it "returns a 200" do
          get :index
          expect(response).to have_http_status(:success)
          expect(response).to render_template(:index)
        end
      end

  end

end