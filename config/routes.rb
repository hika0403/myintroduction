Rails.application.routes.draw do
  resources :contacts, except: [:edit, :show, :update, :destroy]
end