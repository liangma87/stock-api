Rails.application.routes.draw do
  devise_for :users, defaults: { format: :json }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :companies, only: [:index] do
        resources :ohlc_prices, param: :range, only: [:index, :show]
        resources :todos, only: [:index, :show]
      end
    end
  end
end
