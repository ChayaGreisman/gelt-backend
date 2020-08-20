Rails.application.routes.draw do
  resources :notes
  resources :saved_cards
  resources :cards
  resources :transactions
  resources :categories
  resources :accounts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
