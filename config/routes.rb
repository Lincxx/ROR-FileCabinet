Rails.application.routes.draw do
  devise_for :users
  # root 'welcome#index'
  resources :docs
  unauthenticated :user do
    root "welcome#index"
  end

  authenticated :user do
    root 'docs#index', as: :authenticated_root
  end
end
