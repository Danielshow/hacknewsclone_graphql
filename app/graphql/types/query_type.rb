module Types
  # Base Query Type
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :all_links, [LinkType], null: false
    field :me, UserType, null: true

    def all_links
      Link.all
    end

    def me
      context[:current_user]
    end
  end
end
