# frozen_string_literal: true

module Types
  # User Type
  class UserType < BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :email, String, null: false
  end
end
