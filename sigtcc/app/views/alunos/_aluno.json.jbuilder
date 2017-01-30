json.extract! aluno, :id, :matricula, :nome, :email, :sexo, :created_at, :updated_at
json.url aluno_url(aluno, format: :json)