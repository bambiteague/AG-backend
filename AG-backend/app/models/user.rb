class User < ApplicationRecord
  has_many :images
  has_many :comments
  has_many :votes, through: :images

  has_secure_password
end
