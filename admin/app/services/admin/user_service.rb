module Admin
  class UserService
    include Godmin::Resources::ResourceService

    attrs_for_index :username, :email, :password, :thumb, :role
    attrs_for_show :username, :email, :password, :thumb, :role
    attrs_for_form :username, :email, :password, :thumb, :role
  end
end
