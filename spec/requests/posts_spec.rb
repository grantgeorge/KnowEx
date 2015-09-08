require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe "GET /api/v1/posts" do
    it "works! (now write some real specs)" do
      get "/api/v1/posts"
      expect(response).to have_http_status(200)
    end
  end
end
