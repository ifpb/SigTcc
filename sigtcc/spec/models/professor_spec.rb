require 'rails_helper'

RSpec.describe Professor, type: :model do

  #pending "add some examples to (or delete) #{__FILE__}"
  it "Professor é válido" do
   expect(Professor.new).to be_valid


 end
  it "Siape é válido" do
    professor = Professor.new( siape: "pulin")
  expect(professor).to be_valid
  end

# perguntar ao professor sobre esse erro
=begin
  it "TCC é válido" do
    a = []
    t = Tcc.new
    a << t
    professor = Professor.new( tccs: a)
  expect(professor).to be_valid
  end
=end
  describe "Associações" do
    it "Tem várias coordenadores" do
      assc = described_class.reflect_on_association(:coordenadors)
      expect(assc.macro).to eq :has_many
    end

    it "Orienta vários tcc" do
      assc = described_class.reflect_on_association(:tccs)
      expect(assc.macro).to eq :has_many
    end

    it "Avaliou vários tcc" do
      assc = described_class.reflect_on_association(:ficha_avaliacaos)
      expect(assc.macro).to eq :has_many
    end
  end





end
