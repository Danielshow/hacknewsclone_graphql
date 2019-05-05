# frozen_string_literal: true

module Types
  # Retuen Auth type
  class AuthType < BaseObject
    field :user, Types::UserType, null: true
    field :token, String, null: true
  end
end
