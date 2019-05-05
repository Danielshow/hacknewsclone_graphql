# frozen_string_literal: true

# User model
class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  has_many :votes
  has_many :links
end
