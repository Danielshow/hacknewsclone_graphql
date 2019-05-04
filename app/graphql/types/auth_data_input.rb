# frozen_string_literal: true

module Types
  # Auth Data Input
  class AuthDataInput < BaseInputObject
    graphql_name 'AuthDataInput'

    argument :email, String, required: true
    argument :password, String, required: true
  end
end
