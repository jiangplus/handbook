Admin::Engine.routes.draw do
  resources :users
  resources :posts
  root to: "application#welcome"
end
