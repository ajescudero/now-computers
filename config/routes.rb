Rails.application.routes.draw do
  root to: 'stores#index'
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :products
  resources :stores do
    resources :products
  end
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
