Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to:'users#index'
  get "event/show"
  resources :events do
    collection do
      post :confirm
    end
  end
end
