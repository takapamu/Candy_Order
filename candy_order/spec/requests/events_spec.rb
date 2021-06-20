require 'rails_helper'

RSpec.describe "Events", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/admin/events/index"
      expect(response).to have_http_status(:success)
    end
  end

end
