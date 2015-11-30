require_dependency "admin/application_controller"

module Admin
  class PostsController < ApplicationController
    include Godmin::Resources::ResourceController
  end
end
