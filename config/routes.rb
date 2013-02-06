Honeypot::Application.routes.draw do
  get "static_pages/home"
  get '/help',    to: 'static_pages#help'
  get '/about',   to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "static_pages#home"
  devise_for :users
  resources :users
end