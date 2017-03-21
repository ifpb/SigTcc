require "rails_helper"

RSpec.describe PlanoAtividadesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/plano_atividades").to route_to("plano_atividades#index")
    end

    it "routes to #new" do
      expect(:get => "/plano_atividades/new").to route_to("plano_atividades#new")
    end

    it "routes to #show" do
      expect(:get => "/plano_atividades/1").to route_to("plano_atividades#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/plano_atividades/1/edit").to route_to("plano_atividades#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/plano_atividades").to route_to("plano_atividades#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/plano_atividades/1").to route_to("plano_atividades#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/plano_atividades/1").to route_to("plano_atividades#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/plano_atividades/1").to route_to("plano_atividades#destroy", :id => "1")
    end

  end
end
