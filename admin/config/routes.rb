Admin::Engine.routes.draw do
  resources :posts
  root to: "application#welcome"
end
