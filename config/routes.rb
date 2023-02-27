Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/sentiments', to: 'sentiment_meme#index'
  post "/sentiments", to: "sentiment_meme#index"
end
