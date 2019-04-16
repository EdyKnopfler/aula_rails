Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/procurar-cep', controller: :busca, action: :form
  post '/pesquisa-cep', controller: :busca, action: :buscar
  
  resources :pessoas
  
end
