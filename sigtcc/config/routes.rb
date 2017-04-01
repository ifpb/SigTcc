Rails.application.routes.draw do
  resources :bancas
  get 'orientacao/index'

  resources :plano_atividades
  resources :alunos

  #Adicionando rota root para página de logar#
  root 'sessions#new'



    get '/consulta', to: 'consultas#index'
    post '/consulta', to: 'consultas#consultar'

    get '/consulta_banca', to: 'consultas_banca#index'
    post '/consulta_banca', to: 'consultas_banca#consultar_banca'




    get    '/login',   to: 'sessions#new'
    post   '/login',   to: 'sessions#create'
    delete '/logout',  to: 'sessions#destroy'
    get '/perfil',  to: 'sessions#escolheperfil'
    post '/perfil',  to: 'sessions#perfilescolhido'

  resources :ata_defesas do
    resource :download, only: [:show]
  end
  resources :tccs
  resources :usuarios
  get '/usuarios', to: 'usuarios#orientacao'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
