Rails.application.routes.draw do
  resources :strains, only: [:index, :show, :create, :update]
end
