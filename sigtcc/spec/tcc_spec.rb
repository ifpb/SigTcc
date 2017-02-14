require 'rails_helper'

#Arquivo que contém os casos de teste relativo ao CRUD TCC


RSpec.describe Tcc, type: :model do

    context "Teste CRUD de TCC:" do
      it "RSPec 1 - Cadastrando um TCC preenchendo todos os campos" do
      tcc = Tcc.new
      palavra2 = Palavra.new
      palavra1 = Palavra.new
      alu = Aluno.new
      prof = Professor.new
      tcc.titulo = "Teste de Software"
      tcc.periodo = "2016.2"
      tcc.tema = "Engenharia de Software"
      tcc.agendad = true
      tcc.tipos = 2
      palavra1.nome = "palavrateste"
      palavra2.nome = "palavrateste2"
      tcc.palavras << palavra1
      tcc.palavras << palavra2
      tcc.aluno = alu
      tcc.professor = prof
      #O teste abaixo passa se o retorno de tcc.valid? for true, ou seja, se ele é válido
      expect(tcc.valid?).to be_truthy
   end
  end


  context "Capybara 1 - Cadastrando um TCC preenchendo todos os campos" do
  it "Testando Cadastrar TCC" do
    #mostra quantos tccs tenho cadastrados
    tcc = Tcc.all
    size_old = tcc.size

    visit '/tccs/new'
    within("#new_tcc") do
      fill_in 'Titulo', with: 'Meu TCC de TSI'
      fill_in 'Periodo', with: '2016.2'
      fill_in 'Tema', with: 'PDS'
      fill_in 'palavra1', with: 'palavra1'
      fill_in 'palavra2', with: 'palavra2'
      fill_in 'palavra3', with: 'palavra3'
      select 'pesquisa', from: 'tcc_tipos'
      choose('agendadotrue')
      page.attach_file('tcc_arquivo', Rails.root + "spec/test_upload/dadosabertos.pdf")
      #testar se foi add o pdf
    end
    click_button 'Salvar'
    expect(page).to have_content "Tcc cadastrado com sucesso!"
    tcc = Tcc.all
    #Verificar se realmente foi cadastrados
    expect(tcc.size).to eq(size_old+1)
  end
end
    context "CRUD TCC" do
    it "Cabypara 2 - Cadastrando um TCC sem preecher os dados" do
      visit '/tccs/new'
        #within("#new_tcc") do
        click_button 'Salvar'
        expect(page).to have_content "Erro! Preencha todas as palavras-chaves!"
    #end
  end
end

  context 'Atualizar TCC - falta terminar' do
    it 'Testando atualizar TCC' do
      tcc = Tcc.all
      size_old = tcc.size
      #page.find(:css,'td', text:'testeee', exact: true)
      visit '/tccs'
      #find(:xpath, "//tr[td[contains(.,'Novo PDS')]]/td/a", :match=>'Editar' ).click
      #find(:css, '#titulo')
      within('#edit_tcc') do
        #find('tr').find('td').find('Novo PDS')
        #find('titulo', text: 'Novo PDS')
        click_link 'Editar'
        fill_in 'Titulo', with: 'Meu TCC de TSI'
        fill_in 'Periodo', with: '2017.1'
        fill_in 'Tema', with: 'PDS'
        fill_in 'palavra1', with: 'palavra1'
        fill_in 'palavra2', with: 'palavra2'
        fill_in 'palavra3', with: 'palavra3'
        select 'pesquisa', from: 'tcc_tipos'
        choose('agendadotrue')
        page.attach_file('tcc_arquivo', Rails.root + "spec/test_upload/dadosabertos.pdf")
        #testar se foi add o pdf
        click_button 'Salvar'
        expect(page).to have_content "Tcc cadastrado com sucesso!"
        tcc = Tcc.all
        #Verificar se realmente foi cadastrados
        expect(tcc.size).to eq(size_old)
  end
end
end
#scenario "I cannot submit an invalid file type" do
#    attach_file "File", "spec/asset_specs/fail/erd.pdf"
#    fill_in "Arquivo", with: "should not work"
#    click_button "Adicionar arquivo"



  #end


end
