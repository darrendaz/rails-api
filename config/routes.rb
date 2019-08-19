Rails.application.routes.draw do
  resources :strains, only: [:index, :create]
end
