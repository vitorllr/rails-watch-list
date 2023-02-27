Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :bookmark, only: [:new, :create, :destroy] do
    resources :list, only:[:index, :show, :new, :create] do
      resources :movie
    end
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
