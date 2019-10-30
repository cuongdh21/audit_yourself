require "rails_helper"

RSpec.describe ShippersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/shippers").to route_to("shippers#index")
    end

    it "routes to #new" do
      expect(:get => "/shippers/new").to route_to("shippers#new")
    end

    it "routes to #show" do
      expect(:get => "/shippers/1").to route_to("shippers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/shippers/1/edit").to route_to("shippers#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/shippers").to route_to("shippers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/shippers/1").to route_to("shippers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/shippers/1").to route_to("shippers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/shippers/1").to route_to("shippers#destroy", :id => "1")
    end
  end
end
