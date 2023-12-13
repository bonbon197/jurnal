Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :categories do
    resources :tasks
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "pages#landing"
end
