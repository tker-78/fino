require 'rails_helper'

RSpec.describe "VariableExpenses", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/variable_expense/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/variable_expense/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/variable_expense/edit"
      expect(response).to have_http_status(:success)
    end
  end

end
