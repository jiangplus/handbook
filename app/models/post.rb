class Post < ActiveRecord::Base
  belongs_to :user

  extend Enumerize
  enumerize :status, in: [:draft, :published, :closed], default: :published

  mount_uploader :thumb, ImageUploader

  def self.periodic_create
  	Post.create(title: 'new post')
  end

  after_save do
  	# HardWorker.perform_async(title)
  end

  def to_s
    title
  end
end
