require "rails_helper"

RSpec.describe AgendaBancasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/agenda_bancas").to route_to("agenda_bancas#index")
    end

    it "routes to #new" do
      expect(:get => "/agenda_bancas/new").to route_to("agenda_bancas#new")
    end

    it "routes to #show" do
      expect(:get => "/agenda_bancas/1").to route_to("agenda_bancas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/agenda_bancas/1/edit").to route_to("agenda_bancas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/agenda_bancas").to route_to("agenda_bancas#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/agenda_bancas/1").to route_to("agenda_bancas#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/agenda_bancas/1").to route_to("agenda_bancas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/agenda_bancas/1").to route_to("agenda_bancas#destroy", :id => "1")
    end

  end
end
