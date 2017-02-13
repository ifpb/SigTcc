require 'rails_helper'

RSpec.describe PropostaTcc, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  it "Proposta de TCC é válida" do
   expect(PropostaTcc.new(aluno: Aluno.new)).to be_valid


  end
  it "Data de apresentação é válida" do
    proposta = PropostaTcc.new(aluno: Aluno.new, dataApresentacao: Date.new)
  expect(proposta).to be_valid
  end

  it "Aprovação é válida" do
    proposta = PropostaTcc.new(aluno: Aluno.new, aprovacao: true)
  expect(proposta).to be_valid
  end
  it "Arquivo é válido" do
    proposta = PropostaTcc.new(aluno: Aluno.new, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf') )
  expect(proposta).to be_valid
  end
  describe "Associações" do
    it "Tem um tcc" do
      assc = described_class.reflect_on_association(:tcc)
      expect(assc.macro).to eq :has_one
    end
    it "Pertence a um aluno" do
      assc = described_class.reflect_on_association(:aluno)
      expect(assc.macro).to eq :belongs_to
    end

  end
end
