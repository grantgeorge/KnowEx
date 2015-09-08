require 'rails_helper'

RSpec.describe "Groups", type: :request do
  describe "GET /api/v1/groups" do
    it "works! (now write some real specs)" do
      get "/api/v1/groups"
      expect(response).to have_http_status(200)
    end
  end
end
