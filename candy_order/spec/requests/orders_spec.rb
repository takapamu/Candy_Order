require 'rails_helper'

RSpec.describe "Orders", type: :request do
  describe "GET /show" do
    it "returns http success" do
      get "/orders/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /confirm" do
    it "returns http success" do
      get "/orders/confirm"
      expect(response).to have_http_status(:success)
    end
  end

end
