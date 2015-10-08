Rails.application.routes.draw do
  resources :cigarettes, only: [:create]
  root to: 'welcome#index'
end
