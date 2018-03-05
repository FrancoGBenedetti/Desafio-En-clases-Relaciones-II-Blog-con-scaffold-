Rails.application.routes.draw do
  resources :posts

  root 'posts#index'

  post "comments/create", to: 'comments#create', as: 'comments'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
