require 'rails_helper'

RSpec.describe Aluno, type: :model do

  #pending "add some examples to (or delete) #{__FILE__}"
  it "Aluno é válido" do
   expect(Aluno.new).to be_valid


 end
  it "Matricula é válido" do
    aluno = Aluno.new(matricula: "20141370526")
  expect(aluno).to be_valid
  end

  it "Proposta TCC é válido" do
    aluno = Aluno.new(proposta_tcc: PropostaTcc.new)
  expect(aluno).to be_valid
  end

  it "Usuário de um aluno é válido" do
    aluno = Aluno.new(usuario: Usuario.new)
  expect(aluno).to be_valid
  end

  describe "Associações" do
    it "Tem uma proposta" do
      assc = described_class.reflect_on_association(:proposta_tcc)
      expect(assc.macro).to eq :has_one
    end

  end

end
