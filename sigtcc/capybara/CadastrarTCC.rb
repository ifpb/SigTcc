require 'rails_helper'

RSpec.describe Tcc, type: :model do
  context "Primeiro Testando Cadastrar TCC" do
  it "Testando Cadastrar TCC" do
    visit '/tccs/new'

    within("#new_tcc") do
      fill_in 'Titulo', with: 'Meu TCC de TSI'
      fill_in 'Periodo', with: '2016.2'
      fill_in 'Tema', with: 'PDS'
      fill_in 'Tipo', with: 'estagio'
      fill_in 'Palavras-chaves', with: 'palavra1'
      fill_in 'Palavras-chaves', with: 'palavra2'
      fill_in 'Palavras-chaves', with: 'palavra3'
    end
    click_button 'Salvar'
    expect(page).to have_content 'successo'
  end
end
end
