# frozen_string_literal: true

module Mutations
  # Signin user mutation
  class SignInUser < BaseMutation
    argument :data, Types::AuthDataInput, required: true

    type Types::AuthType
    def resolve(data: nil)
      return unless data

      user = User.find_by(email: data[:email])
      return unless user
      return unless user.authenticate(data[:password])

      token = JsonWebToken.encode(userId: user.id)
      { user: user, token: token }
    end
  end
end
