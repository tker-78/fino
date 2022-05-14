require 'rails_helper'

RSpec.describe "Incomes", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/income/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/income/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/income/edit"
      expect(response).to have_http_status(:success)
    end
  end

end
