class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  extend Enumerize
  enumerize :role, in: [:common, :admin], default: :common

  has_many :posts

  before_save do
    self.auth_token ||= generate_authentication_token
  end

  def generate_authentication_token
    loop do
      token = Devise.friendly_token
      break token unless User.find_by(auth_token: token)
    end
  end

  def to_s
    username
  end
end
