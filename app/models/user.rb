class User < ApplicationRecord
  before_save { email_address.downcase! }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email_address, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

  validates :screen_name, presence: true, length: { maximum: 50 }

  has_secure_password
  validates :password, presence: true, length: { minimum: 4 }
end
