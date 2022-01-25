Rails.application.routes.draw do
  resources :lists, only: [ :new, :create, :edit, :show, :index, :destroy ] do
    resources :bookmarks, only: [:index, :new, :create, :destroy]
  end
end
