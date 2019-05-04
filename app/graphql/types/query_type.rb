module Types
  # Base Query Type
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :all_links, [LinkType], null: false

    def all_links
      Link.all
    end
  end
end
