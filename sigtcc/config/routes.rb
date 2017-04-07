Rails.application.routes.draw do


  ActiveAdmin.routes(self)
  namespace :admin do
    resources :tccs
    resources :alunos
    resources :ata_defesas
    resources :bancas
    resources :pre_bancas
    resources :coordenadors
    resources :ficha_avaliacaos
    resources :palavras
    resources :plano_atividades
    resources :professors
    resources :proposta_tccs
    resources :usuarios

    root to: "tccs#index"
  end


  resources :bancas
  resources :pre_bancas
  resources :proposta_tccs

   get 'orientacao/index'


  resources :plano_atividades
  resources :alunos

  #Adicionando rota root para página de logar#
  root 'sessions#new'



    get  '/consulta', to: 'consultas#index'
    post '/consulta', to: 'consultas#consultar'

    get '/consulta_banca', to: 'consultas_banca#index'
    post '/consulta_banca', to: 'consultas_banca#consultar_banca'

    post '/consulta_pre_bancas', to: 'pre_bancas#consultar'
    get  '/consulta_pre_bancas_index', to: 'pre_bancas#consulta_pre_bancas_index'


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
