module Admin
  class PostService
    include Godmin::Resources::ResourceService

    attrs_for_index :user, :title, :status, :thumb, :text
    attrs_for_show :user, :title, :status, :thumb, :text
    attrs_for_form :user, :title, :status, :thumb, :text


    filter :title
  
    def filter_title(resources, value)
      resources.where("title LIKE ?", "%#{value}%")
    end
  end
end
