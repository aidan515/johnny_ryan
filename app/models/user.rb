class User < ActiveRecord::Base
  attr_accessible :description, :name, :password, :password_confirmation, :email
  validates_presence_of :email, :name, :description
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :password, length: { within: 6..40 }, :allow_blank => true
end
