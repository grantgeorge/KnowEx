require "rails_helper"

RSpec.describe EndorsementsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/endorsements").to route_to("endorsements#index")
    end

    it "routes to #new" do
      expect(:get => "/endorsements/new").to route_to("endorsements#new")
    end

    it "routes to #show" do
      expect(:get => "/endorsements/1").to route_to("endorsements#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/endorsements/1/edit").to route_to("endorsements#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/endorsements").to route_to("endorsements#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/endorsements/1").to route_to("endorsements#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/endorsements/1").to route_to("endorsements#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/endorsements/1").to route_to("endorsements#destroy", :id => "1")
    end

  end
end
