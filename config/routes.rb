Honeypot::Application.routes.draw do
  get "static_pages/home"
  get '/help',          to: 'static_pages#help'
  get '/about',         to: 'static_pages#about'
  get '/contact',       to: 'static_pages#contact'
  get '/how_it_works',  to: 'static_pages#how_it_works'

  authenticated :user do
    root :to => 'users#dashboard', as: 'authenticated_root'
  end
  unauthenticated do
    root :to => "static_pages#home"
  end
  devise_for :users, controllers: { registrations: 'registrations', omniauth_callbacks: "users/omniauth_callbacks" }
  resources :users do
    get "dashboard"
    resources :tasks
  end
  devise_scope :user do
    get '/users/auth/:provider' => 'users/omniauth_callbacks#passthru'
  end
end