Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/pages/:page" => "pages#show"

  get "receive_code" => "receive#show"

  get '/api/:id', to: 'api#show'

  get '/api/chrom', to: 'api#get_chromosome'

end
