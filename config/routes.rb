Rails.application.routes.draw do
  devise_for :users
  root to: 'overviews#index'
  resources :overviews do
    resources :physicalfinding_measurings
    resources :blood_urine_tests, only: :create
    resources :medical_cares, only: :create
    resources :vaccines, only: :create
  end
end
