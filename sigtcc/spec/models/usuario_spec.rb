require 'rails_helper'

RSpec.describe Usuario, type: :model do

  #pending "add some examples to (or delete) #{__FILE__}"
  it "Usuario é válido" do
   expect(Usuario.new(user: Aluno.new)).to be_valid


 end
  it "Email é válido" do
    usuario = Usuario.new(user: Aluno.new, email: "pulin")
  expect(usuario).to be_valid
  end
  it "Ativo é válido" do
    usuario = Usuario.new(user: Aluno.new, ativo: true)
  expect(usuario).to be_valid

  end
  it "Nome é válido" do
    usuario = Usuario.new(user: Aluno.new, nome: "pulin")
  expect(usuario).to be_valid
  end
  it "Sexo é válido" do
    usuario = Usuario.new(user: Aluno.new, sexo: nil)
  expect(usuario).to be_valid
  end

end
