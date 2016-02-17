class User < ActiveRecord::Base
  has_secure_password
  has_many :products, through: :reviews
  validates :name, presence: true
  # ^ automatically add attr_accessor :password, :password_confirmation
  # which sets up virtual attributes (not database-backed) with those names so we can easily create a form that accepts those values from the user
  # and has_secure_password will take those values and encrypt them into the password_digest field on the users table.
  # Additionally, has_secure_password adds a validation for you to ensure a password is set on create.
end
