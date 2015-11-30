class Post < ActiveRecord::Base
  belongs_to :user

  extend Enumerize
  enumerize :status, in: [:draft, :published, :closed], default: :published

  mount_uploader :thumb, ImageUploader

  def self.periodic_create
  	Post.create(title: 'new post')
  end

  def to_s
    title
  end
end
