# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  get "about", to: "about#index"

  get "signup", to: "registration#signup"
  post "signup", to: "registration#createuser"

  root to: "main#index"
end
