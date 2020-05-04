Rails.application.routes.draw do
  devise_for :accounts
  resources :posts
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/faqs' => 'public#faqs', as: :faqs
  get '/scams' => 'public#scams', as: :scams
  get '/safety' => 'public#safety', as: :safety
  get '/terms' => 'public#terms', as: :terms

  root to: 'public#home'
end
