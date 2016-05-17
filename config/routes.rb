Rails.application.routes.draw do

  root to: "static#home"

  resources :pages

  namespace :admin do
    resources :pages
  end

end
