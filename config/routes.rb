Rails.application.routes.draw do
  devise_for :users, defaults: { format: :json }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      # This ticker can have params queries, start and end
      get 'ohlc/:ticker', to: 'ohlc_prices#show'
      get 'companies', to: 'companies#index'
      get 'todos', to: 'todos#index'
      get 'todos/:ticker', to: 'todos#show'
      #resources :companies, only: [:index] do
      #  resources :ohlc_prices, param: :range, only: [:index, :show]
      #  resources :todos, only: [:index, :show]
      #end
      patch 'todos/:id', to: 'todos#update'
      post  'todos/:ticker',  to: 'todos#create'
      delete  'todos/:id',  to: 'todos#destroy'
    end
  end

  get 'profiles/charities', :to => 'profiles#charities_index'
end
