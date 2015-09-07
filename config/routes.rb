Rails.application.routes.draw do
  root to: "static_pages#index"
  resources :images, only: [:index, :show]
end
