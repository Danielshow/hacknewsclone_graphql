# frozen_string_literal: true

module Mutations
  # Signin user mutation
  class SignInUser < BaseMutation
    argument :data, Types::AuthDataInput, required: true

    field :token, String, null: true
    field :user, Types::User, null: true

    def resolve(data: nil)
    end
  end
end
