require "rails_helper"

RSpec.describe PropostaTccsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/proposta_tccs").to route_to("proposta_tccs#index")
    end

    it "routes to #new" do
      expect(:get => "/proposta_tccs/new").to route_to("proposta_tccs#new")
    end

    it "routes to #show" do
      expect(:get => "/proposta_tccs/1").to route_to("proposta_tccs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/proposta_tccs/1/edit").to route_to("proposta_tccs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/proposta_tccs").to route_to("proposta_tccs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/proposta_tccs/1").to route_to("proposta_tccs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/proposta_tccs/1").to route_to("proposta_tccs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/proposta_tccs/1").to route_to("proposta_tccs#destroy", :id => "1")
    end

  end
end
