# frozen_string_literal: true

module Mutations
  # Mutation to create Link
  class CreateLink < BaseMutation
    argument :description, String, required: true
    argument :url, String, required: true

    type Types::LinkType

    def resolve(description: nil, url: nil)
      Link.create!(
        description: description,
        url: url,
        user: context[:current_user]
      )
    rescue ActiveRecord::RecordInvalid => e
      GraphQL::ExecutionError.new("Invalid input: #{e.record.errors.full_messages.join(', ')}")
    end
  end
end
