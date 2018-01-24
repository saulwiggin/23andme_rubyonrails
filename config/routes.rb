Rails.application.routes.draw do
  root 'welcome_page#welcome'

  get 'welcome/welcomePage'

  get 'genomes/index'

  get 'genomes/new'

  get 'genomes/create'

  get 'genomes/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/pages/:page" => "pages#show"

  get "receive_code" => "receive#show"

  get '/api/:id', to: 'api#show'

  get 'api/txtDNA', to: 'api#txtDNAupload'

  get '/api/chrom', to: 'api#get_chromosome'

  get '/login' => "pages#login"

  get '/modal' => 'pages#modal'

  get '/purchase' => 'pages#purchase'

  resources :genomes, only: [:index, :new, :create, :destroy]

   root "genomes#index"


end
