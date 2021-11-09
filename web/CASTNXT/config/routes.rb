Rails.application.routes.draw do
  resources :gforms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "gforms#index"
end
