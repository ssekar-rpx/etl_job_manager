class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true

  # TODO: enable this in Rails 7.1 version, this supports authenticate_by method
  has_secure_password
end
