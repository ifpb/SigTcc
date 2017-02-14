require 'rails_helper'

RSpec.describe AtaDefesa, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it "Ata de defesa é válida" do
   expect(AtaDefesa.new(banca: Banca.new)).to be_valid


  end
  it "Data é válida" do
    ata = AtaDefesa.new(banca: Banca.new, data: Date.new)
  expect(ata).to be_valid
  end

  it "Arquivo é válido" do
    ata = AtaDefesa.new(banca: Banca.new, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf') )
  expect(ata).to be_valid
  end

  describe "Associações" do
    it "Pertence a uma banca" do
      assc = described_class.reflect_on_association(:banca)
      expect(assc.macro).to eq :belongs_to
    end

  end
end
