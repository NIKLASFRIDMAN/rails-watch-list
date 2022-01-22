Rails.application.routes.draw do
  resources :lists, only: [ :new, :create, :edit, :show, :index ] do
    resoruces :bookmarks
  end
end
