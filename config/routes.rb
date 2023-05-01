Rails.application.routes.draw do
  root 'dots#index'
  resources :dots, only: %i[index update]
end
