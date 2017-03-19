require 'rails_helper'

 context 'Teste de Status de TCC' do
 	it 'Logando com um usuario que concluiu todos os passos' do

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
		page.has_checked_field?('status-tcc')
		page.has_checked_field?('status-orientador')
		page.has_checked_field?('status-proposta')
		page.has_checked_field?('status-plano')
		page.has_checked_field?('status-banca')
		#page.has_checked_field?('status-defendido')
	end
	it 'Logando com um usuario que não possui nada cadastrado' do
		rafael = Aluno.create(matricula: "20141370526")
		Usuario.create(user: rafael, nome: "Rafael",email: "rafael@rafael.com", password: "1111", password_confirmation: "1111", ativo: true, sexo: "masculino")

		visit "/login"
		fill_in 'Email', with: 'rafael@rafael.com'
		fill_in 'Password', with: '1111'
		click_button 'Acessar'
		expect(page).to have_content "Você ainda não possui uma proposta de TCC cadastrada!"
	end
	it 'Logando com um usuario que possui apenas proposta cadastrada' do
		bruno = Aluno.create(matricula: "20141370526")
		Usuario.create(user: bruno, nome: "Washigton Bruno",email: "bruno@bruno.com", password: "1111", password_confirmation: "1111", ativo: true, sexo: "masculino")

		heremita = Professor.create(siape: "12345678")
		Usuario.create(user: heremita, nome: "Heremita Lira",email: "heremita@heremita.com", password: "1111", password_confirmation: "1111", ativo: true, sexo: "feminino")

		PropostaTcc.create(dataApresentacao: "28/02/2017", aprovacao: false, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf'), aluno: bruno)

		visit "/login"
		fill_in 'Email', with: 'bruno@bruno.com.com'
		fill_in 'Password', with: '1111'
		click_button 'Acessar'
		page.has_no_checked_field?('status-tcc')
		page.has_no_checked_field?('status-orientador')
		page.has_checked_field?('status-proposta')
		page.has_no_checked_field?('status-plano')
		page.has_no_checked_field?('status-banca')
		#page.has_no_checked_field?('status-defendido')
	end
	#it 'Logando com um usuário que possui proposta e orientador cadastrados' do

	#	evangelista = Aluno.create(matricula: "20141370526")
	#	Usuario.create(user: bruno, nome: "Evangelista Farias",email: "evangelista@evangelista.com", password: "1111", password_confirmation: "1111", ativo: true, sexo: "masculino")

	#	heremita = Professor.create(siape: "12345678")
	#	Usuario.create(user: heremita, nome: "Heremita Lira",email: "heremita@heremita.com", password: "1111", password_confirmation: "1111", ativo: true, sexo: "feminino")

	#	PropostaTcc.create(dataApresentacao: "28/02/2017", aprovacao: false, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf'), aluno: evangelista)

	#	Tcc.create(titulo: "TCC de Tiago", periodo: "2016.2", agendad: true, tipos: 2, professor: heremita, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf'), nota: 10, status: "aprovado", proposta_tcc: evangelista.proposta_tcc)

	#	visit "/login"
	#	fill_in 'Email', with: 'evangelista@evangelista.com'
	#	fill_in 'Password', with: '1111'
	#	click_button 'Acessar'
		#page.has_no_checked_field?('status-tcc')
	#	page.has_checked_field?('status-orientador')
	#	page.has_checked_field?('status-proposta')
	#	page.has_no_checked_field?('status-plano')
	#	page.has_no_checked_field?('status-banca')
	#	page.has_no_checked_field?('status-defendido')	
	#end
	#it 'Logando com um usuario que possui proposta, orientador e plano cadastrados' do
	#	rui = Aluno.create(matricula: "20141370526")
	#	Usuario.create(user: bruno, nome: "Rui Gomes",email: "rui@rui.com", password: "1111", password_confirmation: "1111", ativo: true, sexo: "masculino")

	#	heremita = Professor.create(siape: "12345678")
	#	Usuario.create(user: heremita, nome: "Heremita Lira",email: "heremita@heremita.com", password: "1111", password_confirmation: "1111", ativo: true, sexo: "feminino")

	#	PropostaTcc.create(dataApresentacao: "28/02/2017", aprovacao: false, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf'), aluno: rui)

	#	Tcc.create(titulo: "TCC de Tiago", periodo: "2016.2", agendad: true, tipos: 2, professor: heremita, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf'), nota: 10, status: "aprovado", proposta_tcc: rui.proposta_tcc)
	#	PlanoAtividade.create(dataEntrega: Date.new, aprovacao: true, tcc: rui.proposta_tcc.tcc, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf') )

	#	visit "/login"
	#	fill_in 'Email', with: 'rui@rui.com'
	#	fill_in 'Password', with: '1111'
	#	click_button 'Acessar'
	#	page.has_no_checked_field?('status-tcc')
	#	page.has_checked_field?('status-orientador')
	#	page.has_checked_field?('status-proposta')
	#	page.has_checked_field?('status-plano')
	#	page.has_no_checked_field?('status-banca')
	#	page.has_no_checked_field?('status-defendido')		
	#end
	it 'Logando com um usuario que possui proposta, orientador,plano e TCC cadastrados' do
		nicolas = Aluno.create(matricula: "20141370526")
		Usuario.create(user: nicolas, nome: "Nicolas Farias",email: "nicolas@nicolas.com", password: "1111", password_confirmation: "1111", ativo: true, sexo: "masculino")

		heremita = Professor.create(siape: "12345678")
		Usuario.create(user: heremita, nome: "Heremita Lira",email: "heremita@heremita.com", password: "1111", password_confirmation: "1111", ativo: true, sexo: "feminino")

		PropostaTcc.create(dataApresentacao: "28/02/2017", aprovacao: false, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf'), aluno: nicolas)

		Tcc.create(titulo: "TCC de Tiago", periodo: "2016.2", agendad: true, tipos: 2, professor: heremita, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf'), nota: 10, status: "aprovado", proposta_tcc: nicolas.proposta_tcc)

		Banca.create(dataApresentacao: "24/05/2017", horario: Date.new, tcc: nicolas.proposta_tcc.tcc)
		PlanoAtividade.create(dataEntrega: Date.new, aprovacao: true, tcc: nicolas.proposta_tcc.tcc, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf') )

		visit "/login"
		fill_in 'Email', with: 'nicolas@nicolas.com'
		fill_in 'Password', with: '1111'
		click_button 'Acessar'
		page.has_no_checked_field?('status-tcc')
		page.has_checked_field?('status-orientador')
		page.has_checked_field?('status-proposta')
		page.has_no_checked_field?('status-plano')
		page.has_no_checked_field?('status-banca')
		#page.has_no_checked_field?('status-defendido')		
	end 
	it 'Logando com um usuario que possui proposta, orientador,plano, banca e TCC cadastrados' do
		mariana = Aluno.create(matricula: "20141370526")
		Usuario.create(user: mariana, nome: "Mariana",email: "mariana@mariana.com", password: "1111", password_confirmation: "1111", ativo: true, sexo: "masculino")

		heremita = Professor.create(siape: "12345678")
		Usuario.create(user: heremita, nome: "Heremita Lira",email: "heremita@heremita.com", password: "1111", password_confirmation: "1111", ativo: true, sexo: "feminino")

		PropostaTcc.create(dataApresentacao: "28/02/2017", aprovacao: false, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf'), aluno: mariana)

		Tcc.create(titulo: "TCC de Tiago", periodo: "2016.2", agendad: true, tipos: 2, professor: heremita, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf'), nota: 10, status: "aprovado", proposta_tcc: mariana.proposta_tcc)

		Banca.create(dataApresentacao: "24/05/2017", horario: Date.new, tcc: mariana.proposta_tcc.tcc)
		PlanoAtividade.create(dataEntrega: Date.new, aprovacao: true, tcc: mariana.proposta_tcc.tcc, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf') )


		visit "/login"
		fill_in 'Email', with: 'mariana@mariana.com'
		fill_in 'Password', with: '1111'
		click_button 'Acessar'
		page.has_checked_field?('status-tcc')
		page.has_checked_field?('status-orientador')
		page.has_checked_field?('status-proposta')
		page.has_checked_field?('status-plano')
		page.has_checked_field?('status-banca')
		#page.has_no_checked_field?('status-defendido')		
	end
end

