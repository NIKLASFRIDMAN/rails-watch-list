Rails.application.routes.draw do
  root to: "lists#index"
  resources :lists, only: [ :new, :create, :edit, :show, :index, :destroy ] do
    resources :bookmarks, only: [:index, :new, :create, :destroy]
  end
end
