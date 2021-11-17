Rails.application.routes.draw do
  resources :users
  get '/:id/preview', to: 'gforms#preview', as: 'preview'
  get '/:id/edit_form', to: 'gforms#edit_form', as: 'edit_form'
  
  resources :gforms
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/users')
end
