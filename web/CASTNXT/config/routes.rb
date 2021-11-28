Rails.application.routes.draw do
  get 'gauthcontroller/handle'
  resources :users
  get '/:id/preview', to: 'gforms#preview', as: 'preview'
  get '/:id/edit_form', to: 'gforms#edit_form', as: 'edit_form'
  get '/:id/view_responses', to: 'gforms#view_responses', as: 'view_responses'
  
  resources :gforms
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/users')
end
