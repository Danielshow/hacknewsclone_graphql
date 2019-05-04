# frozen_string_literal: true

module Types
  # GraphQL types
  class LinkType < BaseObject
    field :id, ID, null: false
    field :url, String, null: false
    field :description, String, null: false
  end
end
