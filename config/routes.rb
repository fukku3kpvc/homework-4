Rails.application.routes.draw do
  resources :expeditions
  root 'expeditions#index'
end
