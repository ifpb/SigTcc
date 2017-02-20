require 'rails_helper'

RSpec.describe AtaDefesasController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      redirect_to controller: "ata_defesas", action: "new", tcc: 1
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #create" do
    it "returns http success" do

      redirect_to controller: "ata_defesas", action: "create", tcc: 1
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      redirect_to controller: "ata_defesas", action: "edit", id: 1
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #destroy" do
    it "returns http success" do
      redirect_to controller: "ata_defesas", action: "destroy", id: 1
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
