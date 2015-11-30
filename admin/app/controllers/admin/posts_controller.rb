require_dependency "admin/application_controller"

module Admin
  class PostsController < ApplicationController
    include Godmin::Resources::ResourceController

    def resource_params
      params.require(:post).permit(:user, :user_id, :title, :status, :thumb, :text)
    end
  end
end
