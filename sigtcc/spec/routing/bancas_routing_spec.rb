require "rails_helper"

RSpec.describe BancasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/bancas").to route_to("bancas#index")
    end

    it "routes to #new" do
      expect(:get => "/bancas/new").to route_to("bancas#new")
    end

    it "routes to #show" do
      expect(:get => "/bancas/1").to route_to("bancas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/bancas/1/edit").to route_to("bancas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/bancas").to route_to("bancas#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/bancas/1").to route_to("bancas#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/bancas/1").to route_to("bancas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/bancas/1").to route_to("bancas#destroy", :id => "1")
    end

  end
end
