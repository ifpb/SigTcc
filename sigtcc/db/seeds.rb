# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#

############################################################
#senha de usuários = 1111

#Inserção de usuários alunos

pulin = Aluno.create(matricula: "20141370526")
Usuario.create(user: pulin, nome: "João Paulo Marques e Almeida",email: "joaopaulo@joaopaulo.com", password: "1111", password_confirmation: "1111", ativo: true, sexo: "masculino")

bruno = Aluno.create(matricula: "20142536523")
Usuario.create(user: bruno, nome: "Washinghton Bruno Rodrigues",email: "bruno@bruno.com", password: "1111", password_confirmation: "1111", ativo: true, sexo: "masculino")

samyra = Aluno.create(matricula: "2014123654")
Usuario.create(user: samyra, nome: "Samyra Lara",email: "samyra@samyra.com", password: "1111", password_confirmation: "1111", ativo: true, sexo: "feminino")

diego = Aluno.create(matricula: "2013456958")
Usuario.create(user: diego, nome: "Diego Carvalho",email: "diego@diego.com", password: "1111", password_confirmation: "1111", ativo: true, sexo: "masculino")

matheus = Aluno.create(matricula: "2014253651")
Usuario.create(user: matheus, nome: "Matheus Mayer",email: "matheus@matheus.com", password: "1111", password_confirmation: "1111", ativo: true, sexo: "masculino")

sergio = Aluno.create(matricula: "1212")
Usuario.create(user: sergio, nome: "Sergio Campos",email: "sergio@sergio.com", password: "1111", password_confirmation: "1111", ativo: true, sexo: "masculino")

############################################################

#Inserção de Usuarios professores

nadja = Professor.create(siape: "12536548")
Usuario.create(user: nadja, nome: "Nadja Rodrigues",email: "nadja@nadja.com", password: "1111", password_confirmation: "1111", ativo: true, sexo: "feminino")


fred = Professor.create(siape: "23654148")
Usuario.create(user: fred, nome: "Frederico Guedes",email: "fred@fred.com", password: "1111", password_confirmation: "1111", ativo: true, sexo: "masculino")


valeria = Professor.create(siape: "25365145")
Usuario.create(user: valeria, nome: "Valeria Cavalcanti",email: "valeria@valeria.com", password: "1111", password_confirmation: "1111", ativo: true, sexo: "feminino")

#atribuindo perfil de coordenador ao professor_id

Coordenador.create(professor: valeria, ativo: true, portaria: "25/2016", dataInicio: "25/07/2014", dataFim: "25/07/2017")

########################################################

#inserção de proposta dos alunos

PropostaTcc.create(dataApresentacao: "25/09/2016", aprovacao: true, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf'), aluno: pulin)

PropostaTcc.create(dataApresentacao: "13/10/2016", aprovacao: true, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf'), aluno: bruno)

PropostaTcc.create(dataApresentacao: "15/11/2016", aprovacao: true, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf'), aluno: samyra)

PropostaTcc.create(dataApresentacao: "25/09/2016", aprovacao: false, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf'), aluno: diego)

PropostaTcc.create(dataApresentacao: "20/12/2016", aprovacao: true, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf'), aluno: matheus)

PropostaTcc.create(dataApresentacao: "30/09/2016", aprovacao: true, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf'), aluno: sergio)

################################################################

#inserção de TCC para alunos

Tcc.create(titulo: "Das coisas que se fala sobre Vicente Semântico", periodo: "2016.2", agendad: true, tipos: 2, professor: fred, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf'), nota: 10, status: "aprovado", proposta_tcc: pulin.proposta_tcc)

Tcc.create(titulo: "Vicente na UNIMED", periodo: "2016.2", agendad: true, tipos: 1, professor: fred, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf'), nota: 8.5, proposta_tcc: bruno.proposta_tcc)

Tcc.create(titulo: "A Vox de Vicente", periodo: "2016.1", agendad: true, tipos: 1, professor: valeria, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf'), nota: 9.5, status: "aprovado", proposta_tcc: matheus.proposta_tcc)

Tcc.create(titulo: "Fazendo sistemas na escola de Vicente", periodo: "2016.2", agendad: false, tipos: 3, professor: valeria, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf'), nota: 5, status: "reprovado", proposta_tcc: diego.proposta_tcc)

Tcc.create(titulo: "Gerenciando projetos com o método V.I.C.E.N.T.E.", periodo: "2016.1", agendad: true, tipos: 2, professor: nadja, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf'), nota: 10, status: "aprovado", proposta_tcc: samyra.proposta_tcc)

Tcc.create(titulo: "Resolvendo os problemas do Tomcat com Vicente", periodo: "2016.2", agendad: true, tipos: 2, professor: nadja, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf'), nota: 7, status: "aprovado", proposta_tcc: sergio.proposta_tcc)

###############################################################

#inserindo bancas

Banca.create(dataApresentacao: "24/06/2017", horario: Date.new, tcc: pulin.proposta_tcc.tcc)

Banca.create(dataApresentacao: "22/06/2017", horario: Date.new, tcc: bruno.proposta_tcc.tcc)

Banca.create(dataApresentacao: "15/03/2017", horario: Date.new, tcc: samyra.proposta_tcc.tcc)

Banca.create(dataApresentacao: "10/07/2017", horario: Date.new, tcc: matheus.proposta_tcc.tcc)

Banca.create(dataApresentacao: "01/07/2017", horario: Date.new, tcc: sergio.proposta_tcc.tcc)

#inserindo ata_defesas

AtaDefesa.create(data: Date.new, banca: pulin.proposta_tcc.tcc.banca, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf'))

AtaDefesa.create(data: Date.new, banca: samyra.proposta_tcc.tcc.banca, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf'))

AtaDefesa.create(data: Date.new, banca: bruno.proposta_tcc.tcc.banca, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf'))

AtaDefesa.create(data: Date.new, banca: matheus.proposta_tcc.tcc.banca, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf'))

AtaDefesa.create(data: Date.new, banca: sergio.proposta_tcc.tcc.banca, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf'))

#inserindo fichas de avaliação

FichaAvaliacao.create(data: Date.new, banca: pulin.proposta_tcc.tcc.banca, professor: fred, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf') )

FichaAvaliacao.create(data: Date.new, banca: pulin.proposta_tcc.tcc.banca, professor: nadja, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf') )

FichaAvaliacao.create(data: Date.new, banca: pulin.proposta_tcc.tcc.banca, professor: valeria, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf') )

FichaAvaliacao.create(data: Date.new, banca: samyra.proposta_tcc.tcc.banca, professor: fred, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf') )

FichaAvaliacao.create(data: Date.new, banca: samyra.proposta_tcc.tcc.banca, professor: nadja, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf') )

FichaAvaliacao.create(data: Date.new, banca: samyra.proposta_tcc.tcc.banca, professor: valeria, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf') )

FichaAvaliacao.create(data: Date.new, banca: bruno.proposta_tcc.tcc.banca, professor: fred, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf') )

FichaAvaliacao.create(data: Date.new, banca: bruno.proposta_tcc.tcc.banca, professor: nadja, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf') )

FichaAvaliacao.create(data: Date.new, banca: bruno.proposta_tcc.tcc.banca, professor: valeria, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf') )

FichaAvaliacao.create(data: Date.new, banca: matheus.proposta_tcc.tcc.banca, professor: fred, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf') )

FichaAvaliacao.create(data: Date.new, banca: matheus.proposta_tcc.tcc.banca, professor: nadja, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf') )

FichaAvaliacao.create(data: Date.new, banca: matheus.proposta_tcc.tcc.banca, professor: valeria, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf') )

FichaAvaliacao.create(data: Date.new, banca: sergio.proposta_tcc.tcc.banca, professor: fred, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf') )

FichaAvaliacao.create(data: Date.new, banca: sergio.proposta_tcc.tcc.banca, professor: nadja, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf') )

FichaAvaliacao.create(data: Date.new, banca: sergio.proposta_tcc.tcc.banca, professor: valeria, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf') )

#inserção de plano de atividades

PlanoAtividade.create(dataEntrega: Date.new, aprovacao: true, tcc: pulin.proposta_tcc.tcc, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf') )

PlanoAtividade.create(dataEntrega: Date.new, aprovacao: true, tcc: bruno.proposta_tcc.tcc, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf') )

PlanoAtividade.create(dataEntrega: Date.new, aprovacao: true, tcc: diego.proposta_tcc.tcc, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf') )

PlanoAtividade.create(dataEntrega: Date.new, aprovacao: true, tcc: matheus.proposta_tcc.tcc, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf') )

PlanoAtividade.create(dataEntrega: Date.new, aprovacao: true, tcc: samyra.proposta_tcc.tcc, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf') )

PlanoAtividade.create(dataEntrega: Date.new, aprovacao: true, tcc: sergio.proposta_tcc.tcc, arquivo: File.new(Rails.root + 'spec/test_upload/dadosabertos.pdf') )
