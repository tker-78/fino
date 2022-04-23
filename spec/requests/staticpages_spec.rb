require 'rails_helper'

RSpec.describe "Staticpages", type: :request do
  describe "GET /top" do
    it "returns http success" do
      get "/staticpages/top"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /about" do
    it "returns http success" do
      get "/staticpages/about"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /contact" do
    it "returns http success" do
      get "/staticpages/contact"
      expect(response).to have_http_status(:success)
    end
  end

end
