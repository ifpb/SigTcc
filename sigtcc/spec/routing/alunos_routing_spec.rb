require "rails_helper"

RSpec.describe AlunosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/alunos").to route_to("alunos#index")
    end

    it "routes to #new" do
      expect(:get => "/alunos/new").to route_to("alunos#new")
    end

    it "routes to #show" do
      expect(:get => "/alunos/1").to route_to("alunos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/alunos/1/edit").to route_to("alunos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/alunos").to route_to("alunos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/alunos/1").to route_to("alunos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/alunos/1").to route_to("alunos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/alunos/1").to route_to("alunos#destroy", :id => "1")
    end

  end
end
