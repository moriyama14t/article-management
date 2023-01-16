Rails.application.routes.draw do
  root 'articles#index'

  resources :articles do
    collection do
      get 'discard_index'
    end
  end

  devise_for :users
end
