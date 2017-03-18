require 'rails_helper'

###
# Author: João Paulo Marques e Almeida
###


RSpec.describe UsuariosController, type: :controller do

  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  let(:valid_session) { {} }
  # testa se o listar professores com perfil para orientção está funcionando
  describe "GET #index" do
    it "test if the query return" do
      usuario = Usuario.create! valid_attributes
      get :index, params: {}, session: valid_session
        expect(response).to redirect_to(usuario)
    end
  end

  # testa um usuario logado
  describe "GET #show" do
    it "test if the query return" do
      usuario = Aluno.create! valid_attributes
      get :show, params: {id: usuario.to_param}, session: valid_session
        expect(assigns(:usuario)).to redirect_to(usuario)
    end
  end

end
