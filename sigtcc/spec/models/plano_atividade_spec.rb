require 'rails_helper'

RSpec.describe PlanoAtividade, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it "Plano de atividade é válida" do
   expect(PlanoAtividade.new(tcc: Tcc.new)).to be_valid


  end
  it "Data de entrega é válida" do
    plano = PlanoAtividade.new(tcc: Tcc.new, dataEntrega: Date.new)
  expect(plano).to be_valid
  end


  it "Arquivo é válido" do
    plano = PlanoAtividade.new(tcc: Tcc.new, arquivo: "olar")
  expect(plano).to be_valid
  end
  describe "Associações" do

    it "Pertence a um tcc" do
      assc = described_class.reflect_on_association(:tcc)
      expect(assc.macro).to eq :belongs_to
    end

  end
end
