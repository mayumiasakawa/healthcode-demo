Rails.application.routes.draw do
  devise_for :users
  root to: 'overviews#index'
  resources :overviews do
    resources :physical
    resources :blood
    resources :medicalcares
    resources :vaccines
  end

  resources :users, only: [:show, :edit]
end
