Rails.application.routes.draw do
  devise_for :users

  root "datas#index"
  resources :datas, only: [:index]
end
