Rails.application.routes.draw do
  resources :authors
  resources :books, only: [:index,:show, :edit, :update]
  resources :author_books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
