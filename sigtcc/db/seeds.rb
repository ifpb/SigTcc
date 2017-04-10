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

PropostaTcc.create(dataApresentacao: "25/09/2016", aprovacao: true, arquivo: nil, aluno: pulin)

PropostaTcc.create(dataApresentacao: "13/10/2016", aprovacao: true, arquivo: nil, aluno: bruno)

PropostaTcc.create(dataApresentacao: "15/11/2016", aprovacao: true, arquivo: nil, aluno: samyra)

PropostaTcc.create(dataApresentacao: "25/09/2016", aprovacao: false, arquivo: nil, aluno: diego)

PropostaTcc.create(dataApresentacao: "20/12/2016", aprovacao: true, arquivo: nil, aluno: matheus)

PropostaTcc.create(dataApresentacao: "30/09/2016", aprovacao: true, arquivo: nil, aluno: sergio)

################################################################

#inserção de TCC para alunos
palavra = Palavra.create(nome:"Semântico")
t = Tcc.create(titulo: "Das coisas que se fala sobre Vicente Semântico", periodo: "2016.2", agendad: true, tipos: 2, professor: fred, arquivo: nil, nota: 10, status: "aprovado", proposta_tcc: pulin.proposta_tcc)
t.palavras<<palavra

palavra = Palavra.create(nome:"UNIMED")
t = Tcc.create(titulo: "Vicente na UNIMED", periodo: "2016.2", agendad: true, tipos: 1, professor: fred, arquivo: nil, nota: 8.5, proposta_tcc: bruno.proposta_tcc)
t.palavras<<palavra

palavra = Palavra.create(nome:"Vox")
t = Tcc.create(titulo: "A Vox de Vicente", periodo: "2016.1", agendad: true, tipos: 1, professor: valeria, arquivo: nil, nota: 9.5, status: "aprovado", proposta_tcc: matheus.proposta_tcc)
t.palavras<<palavra

palavra = Palavra.create(nome:"escola")
t = Tcc.create(titulo: "Fazendo sistemas na escola de Vicente", periodo: "2016.2", agendad: false, tipos: 3, professor: valeria, arquivo: nil, nota: 5, status: "reprovado", proposta_tcc: diego.proposta_tcc)
t.palavras<<palavra

palavra = Palavra.create(nome:"projetos")
t = Tcc.create(titulo: "Gerenciando projetos com o método V.I.C.E.N.T.E.", periodo: "2016.1", agendad: true, tipos: 2, professor: nadja, arquivo: nil, nota: 10, status: "aprovado", proposta_tcc: samyra.proposta_tcc)
t.palavras<<palavra

palavra = Palavra.create(nome:"Tomcat")
t = Tcc.create(titulo: "Resolvendo os problemas do Tomcat com Vicente", periodo: "2016.2", agendad: true, tipos: 2, professor: nadja, arquivo: nil, nota: 7, status: "aprovado", proposta_tcc: sergio.proposta_tcc)
t.palavras<<palavra

###############################################################

#inserindo bancas

b = Banca.create(dataApresentacao: "24/06/2017", horario: Time.now.strftime("%H:%M"), sala: "10" , tcc: pulin.proposta_tcc.tcc)

b = Banca.create(dataApresentacao: "22/06/2017", horario: Time.now.strftime("%H:%M"), sala: "12" , tcc: bruno.proposta_tcc.tcc)

b = Banca.create(dataApresentacao: "15/03/2017", horario: Time.now.strftime("%H:%M"), sala: "05" , tcc: samyra.proposta_tcc.tcc)

b = Banca.create(dataApresentacao: "10/07/2017", horario: Time.now.strftime("%H:%M"), sala: "10" , tcc: matheus.proposta_tcc.tcc)

b = Banca.create(dataApresentacao: "01/07/2017", horario: Time.now.strftime("%H:%M"), sala: "10" , tcc: sergio.proposta_tcc.tcc)


###############################################################

#inserindo Pre bancas

PreBanca.create(dataApresentacao: "24/06/2017", horario: Time.now.strftime("%H:%M"), sala: "10" , proposta_tcc: pulin.proposta_tcc)

PreBanca.create(dataApresentacao: "22/06/2017", horario: Time.now.strftime("%H:%M"), sala: "12" , proposta_tcc: bruno.proposta_tcc)

PreBanca.create(dataApresentacao: "15/03/2017", horario: Time.now.strftime("%H:%M"), sala: "05" , proposta_tcc: samyra.proposta_tcc)

PreBanca.create(dataApresentacao: "10/07/2017", horario: Time.now.strftime("%H:%M"), sala: "10" , proposta_tcc: matheus.proposta_tcc)

PreBanca.create(dataApresentacao: "01/07/2017", horario: Time.now.strftime("%H:%M"), sala: "10" , proposta_tcc: sergio.proposta_tcc)

#inserindo ata_defesas

AtaDefesa.create(data: "30/09/2016", banca: pulin.proposta_tcc.tcc.banca, arquivo: nil)

AtaDefesa.create(data: "30/09/2016", banca: samyra.proposta_tcc.tcc.banca, arquivo: nil)

AtaDefesa.create(data: "30/09/2016", banca: bruno.proposta_tcc.tcc.banca, arquivo: nil)

AtaDefesa.create(data: "30/09/2016", banca: matheus.proposta_tcc.tcc.banca, arquivo: nil)

AtaDefesa.create(data: "30/09/2016", banca: sergio.proposta_tcc.tcc.banca, arquivo: nil)

#inserindo fichas de avaliação

FichaAvaliacao.create(data: "30/09/2016", banca: pulin.proposta_tcc.tcc.banca, professor: fred, arquivo: nil )

FichaAvaliacao.create(data: "30/09/2016", banca: pulin.proposta_tcc.tcc.banca, professor: nadja, arquivo: nil )

FichaAvaliacao.create(data: "30/09/2016", banca: pulin.proposta_tcc.tcc.banca, professor: valeria, arquivo: nil )

FichaAvaliacao.create(data: "30/09/2016", banca: samyra.proposta_tcc.tcc.banca, professor: fred, arquivo: nil )

FichaAvaliacao.create(data: "30/09/2016", banca: samyra.proposta_tcc.tcc.banca, professor: nadja, arquivo: nil )

FichaAvaliacao.create(data: "30/09/2016", banca: samyra.proposta_tcc.tcc.banca, professor: valeria, arquivo: nil )

FichaAvaliacao.create(data: "30/09/2016", banca: bruno.proposta_tcc.tcc.banca, professor: fred, arquivo: nil )

FichaAvaliacao.create(data: "30/09/2016", banca: bruno.proposta_tcc.tcc.banca, professor: nadja, arquivo: nil )

FichaAvaliacao.create(data: "30/09/2016", banca: bruno.proposta_tcc.tcc.banca, professor: valeria, arquivo: nil )

FichaAvaliacao.create(data: "30/09/2016", banca: matheus.proposta_tcc.tcc.banca, professor: fred, arquivo: nil )

FichaAvaliacao.create(data: "30/09/2016", banca: matheus.proposta_tcc.tcc.banca, professor: nadja, arquivo: nil )

FichaAvaliacao.create(data: "30/09/2016", banca: matheus.proposta_tcc.tcc.banca, professor: valeria, arquivo: nil )

FichaAvaliacao.create(data: "30/09/2016", banca: sergio.proposta_tcc.tcc.banca, professor: fred, arquivo: nil )

FichaAvaliacao.create(data: "30/09/2016", banca: sergio.proposta_tcc.tcc.banca, professor: nadja, arquivo: nil )

FichaAvaliacao.create(data: "30/09/2016", banca: sergio.proposta_tcc.tcc.banca, professor: valeria, arquivo: nil )

#inserção de plano de atividades

PlanoAtividade.create(dataEntrega: "30/09/2016", aprovacao: true, tcc: pulin.proposta_tcc.tcc, arquivo: nil )

PlanoAtividade.create(dataEntrega: "30/09/2016", aprovacao: true, tcc: bruno.proposta_tcc.tcc, arquivo: nil )

PlanoAtividade.create(dataEntrega: "30/09/2016", aprovacao: true, tcc: diego.proposta_tcc.tcc, arquivo: nil )

PlanoAtividade.create(dataEntrega: "30/09/2016", aprovacao: true, tcc: matheus.proposta_tcc.tcc, arquivo: nil )

PlanoAtividade.create(dataEntrega: "30/09/2016", aprovacao: true, tcc: samyra.proposta_tcc.tcc, arquivo: nil )

PlanoAtividade.create(dataEntrega: "30/09/2016", aprovacao: true, tcc: sergio.proposta_tcc.tcc, arquivo: nil )
