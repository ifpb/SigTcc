require 'rails_helper'

RSpec.describe Tcc, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it "Tcc é válido" do
   expect(Tcc.new( professor: Professor.new, proposta_tcc: PropostaTcc.new)).to be_valid


  end
  it "Titulo é válido" do
    tcc = Tcc.new( professor: Professor.new, proposta_tcc: PropostaTcc.new, titulo: "Descritor")
  expect(tcc).to be_valid
  end

  it "Periodo é válido" do
    tcc = Tcc.new( professor: Professor.new, proposta_tcc: PropostaTcc.new, periodo: "2016.2")
  expect(tcc).to be_valid
  end

  it "Nota é válida" do
    tcc = Tcc.new( professor: Professor.new, proposta_tcc: PropostaTcc.new, nota: 10.0 )
  expect(tcc).to be_valid
  end
  it "Status é válido" do
    tcc = Tcc.new( professor: Professor.new, proposta_tcc: PropostaTcc.new, status: "defendido")
  expect(tcc).to be_valid
  end

  it "Arquivo é válido" do
    tcc = Tcc.new( professor: Professor.new, proposta_tcc: PropostaTcc.new, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf') )
  expect(tcc).to be_valid
  end



  it "Tipo é válido" do
    tcc = Tcc.new( tipos: "estagio", professor: Professor.new, proposta_tcc: PropostaTcc.new, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf') )
  expect(tcc).to be_valid
  end

  describe "Associações" do

    it "Pertence a um professor" do
      assc = described_class.reflect_on_association(:professor)
      expect(assc.macro).to eq :belongs_to
    end

    it "Pertence a uma proposta de Tcc" do
      assc = described_class.reflect_on_association(:proposta_tcc)
      expect(assc.macro).to eq :belongs_to
    end

    it "Tem um plano de atividade" do
      assc = described_class.reflect_on_association(:plano_atividade)
      expect(assc.macro).to eq :has_one
    end

    it "Tem uma banca" do
      assc = described_class.reflect_on_association(:banca)
      expect(assc.macro).to eq :has_one
    end

  end
end
