Rails.application.routes.draw do
  resources :contacts
  resources :artists
  resources :record_labels
  resources :albums
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Root Route
  root 'albums#index'

end
