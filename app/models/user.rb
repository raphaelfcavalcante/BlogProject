class User < ApplicationRecord
  has_secure_password

  has_many :comment
  has_many :articles

  validates :email, presence: true, uniqueness: true
end
