require 'rails_helper'

 context 'testando' do
 	it 'testando' do

		tiago = Aluno.create(matricula: "20141370526")
		Usuario.create(user: tiago, nome: "Tiago Cesario",email: "tiago@tiago.com", password: "1111", password_confirmation: "1111", ativo: true, sexo: "masculino")

		heremita = Professor.create(siape: "12345678")
		Usuario.create(user: heremita, nome: "Heremita Lira",email: "heremita@heremita.com", password: "1111", password_confirmation: "1111", ativo: true, sexo: "feminino")

		PropostaTcc.create(dataApresentacao: "28/02/2017", aprovacao: false, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf'), aluno: tiago)

		Tcc.create(titulo: "TCC de Tiago", periodo: "2016.2", agendad: true, tipos: 2, professor: heremita, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf'), nota: 10, status: "aprovado", proposta_tcc: tiago.proposta_tcc)

		Banca.create(dataApresentacao: "24/05/2017", horario: Date.new, tcc: tiago.proposta_tcc.tcc)
	visit "/login"
	fill_in 'Email', with: 'tiago@tiago.com'
	fill_in 'Password', with: '1111'
	click_button 'Acessar'
	page.has_checked_field?('status-defendido')
end
end

