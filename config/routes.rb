Rails.application.routes.draw do
  get 'main/index'
  post 'main/index'
  resources :main, only: [:index] do
    resources :contacts, only: [:index] do
      collection do
        post 'contacts/confirm', to: 'contacts#confirm'
        get 'done', to: 'contacts#done'
      end
    end
  end
end
