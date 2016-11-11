Rails.application.routes.draw do
  root 'cocktails#index'
  resources :cocktails do
    resources :doses
    resources :stars, only: [:create]
  end

  resources :doses, only: [:destroy]
  mount Attachinary::Engine => "/attachinary"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
