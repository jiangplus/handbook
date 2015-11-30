module Admin
  class PostService
    include Godmin::Resources::ResourceService

    attrs_for_index :user, :title, :status, :thumb, :text
    attrs_for_show :user, :title, :status, :thumb, :text
    attrs_for_form :user, :title, :status, :thumb, :text
  end
end
