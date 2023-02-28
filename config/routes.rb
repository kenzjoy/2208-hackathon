Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "/sentiments", to: "sentiments#create"
  get '/sentiments', to: 'sentiments#index'
end
