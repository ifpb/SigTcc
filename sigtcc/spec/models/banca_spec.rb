require 'rails_helper'

RSpec.describe Banca, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it "Banca é válida" do
   expect(Banca.new(tcc: Tcc.new)).to be_valid


  end
  it "Data de apresentação é válida" do
    banca = Banca.new(tcc: Tcc.new, dataApresentacao: Date.new)
  expect(banca).to be_valid
  end

  it "Horário de apresentação é válida" do
    banca = Banca.new(tcc: Tcc.new, horario: Date.new)
  expect(banca).to be_valid
  end

  describe "Associações" do
    it "Tem uma ata de defesa" do
      assc = described_class.reflect_on_association(:ata_defesa)
      expect(assc.macro).to eq :has_one
    end
    it "Tem várias fichas de avaliação" do
      assc = described_class.reflect_on_association(:ficha_avaliacaos)
      expect(assc.macro).to eq :has_many
    end

    it "Pertence a um TCC" do
      assc = described_class.reflect_on_association(:ficha_avaliacaos)
      expect(assc.macro).to eq :has_many
    end
  end


end
