Rails.application.routes.draw do
  devise_for :users

  namespace 'api', defaults: {format: :json} do
    namespace :v1 do
      resources :users do
        collection do
          post :signup
          post :login
        end
      end
      resources :posts do
        collection do
          post :image_upload
        end
        member do
          post :upload_photo
          post :remove_photo
        end
      end
    end
  end
  
  mount Admin::Engine, at: "admin"
  root to: "application#welcome"
end
