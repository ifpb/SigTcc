require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  Usuario.create(nome: "pulin", email: "pulin@pulin", password: "1111", password_confirmation: "1111", user: Aluno.new(matricula: "11111"))
  describe "Testar Login" do
    it "Path da tela de login válido" do
      get :new
      expect(response).to have_http_status(:success)
    end

    it "testar Usuário válido" do
       session[:email] = "pulin@pulin"

      user = Usuario.find_by(email: session[:email] )
      expect(user).to be_valid
    end

    it "testar Senha de usuário válido" do
       session[:email] = "pulin@pulin"

      user = Usuario.find_by(email: session[:email] )
      flag = !!user.authenticate("1111")
      expect(flag).to eq(true)
    end
  end


end
