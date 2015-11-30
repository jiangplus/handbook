class Post < ActiveRecord::Base
  belongs_to :user

  extend Enumerize
  enumerize :status, in: [:draft, :published, :closed], default: :published

  def to_s
    title
  end
end
