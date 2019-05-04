# frozen_string_literal: true

module Mutations
  # Create User Mutation
  class CreateUser < BaseMutation
    argument :name, String, required: true
    argument :data, Types::AuthDataInput, required: true

    type Types::UserType

    def resolve(name: nil, data: nil)
      User.create!(
        name: name,
        password: data&.password,
        email: data&.email
      )
    end
  end
end
