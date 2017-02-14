require 'rails_helper'

RSpec.describe Coordenador, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  it "Coordenador é válido" do
   expect(Coordenador.new(professor: Professor.new)).to be_valid


 end
  it "Data de início é válida" do
    coordenador = Coordenador.new(professor: Professor.new, dataInicio: Date.new)
  expect(coordenador).to be_valid
  end

  it "Data de fim é válida" do
    coordenador = Coordenador.new(professor: Professor.new, dataFim: Date.new)
  expect(coordenador).to be_valid
  end

  it "Portaria é válida" do
    coordenador = Coordenador.new(professor: Professor.new, portaria: "16/2015")
  expect(coordenador).to be_valid
  end

  describe "Associações" do
    it "Tem um professor" do
      assc = described_class.reflect_on_association(:professor)
      expect(assc.macro).to eq :belongs_to
    end

  end
end
