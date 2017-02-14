require 'rails_helper'

RSpec.describe FichaAvaliacao, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  it "Ficha de avaliação é válido" do
   expect(FichaAvaliacao.new(professor: Professor.new, banca: Banca.new)).to be_valid


 end
  it "Data é válido" do
    ficha = FichaAvaliacao.new(professor: Professor.new, banca: Banca.new, data: Date.new)
  expect(ficha).to be_valid
  end


  describe "Associações" do
    it "Tem um professor" do
      assc = described_class.reflect_on_association(:professor)
      expect(assc.macro).to eq :belongs_to
    end
    it "Tem uma banca" do
      assc = described_class.reflect_on_association(:banca)
      expect(assc.macro).to eq :belongs_to
    end
  end
end
