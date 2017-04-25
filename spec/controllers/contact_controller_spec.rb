require 'rails_helper'

RSpec.describe ContactController, type: :controller do
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the contact form" do
      get :index
      expect(response).to render_contact("index")
    end

  end
end
