# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  get "about", to: "about#index"

  get "signup", to: "auth#signup"
  post "signup", to: "auth#createuser"
  delete "logout", to: "auth#logout"

  root to: "main#index"
end
