Rails.application.routes.draw do
  scope "(:locale)", locale: /en|pt\-BR/ do
    resources :rooms
    resources :users

    resource :confirmation, only: [:show]

    root "home#index"
  end

  get '/:locale' => 'home#index', locale: /en|pt\-BR/
  #root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
