# frozen_string_literal: true

require 'search_object/plugin/graphql'

class Resolvers::LinkSearch
  include SearchObject.module(:graphql)
  
  # Starting point to search
  scope { Link.all }

  type types[Types::LinkType]
  
  class LinkFilter < ::Types::BaseInputObject
    argument :OR, [self], required: false
    argument :description_contains, String, required: false
    argument :url_contains, String, required: false
  end

  option :filter, type: LinkFilter, with: :apply_filter

  def apply_filter(scope, value)
    branches = normalize_filters(value).reduce { |a, b| a.or(b) }
    scope.merge(branches)
  end

  def normalize_filters(value, branches = [])
    scope = Link.all
    scope = scope.like(:description, value[:description_contains]) if value[:description_contains]
    scope = scope.like(:url, value[:url_contains]) if value[:url_contains]

    branches << scope

    value['OR'].reduce(branches) { |s, v| normalize_filters(v, s) } if value['OR'].present?

    branches
  end
end
