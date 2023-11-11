# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :tasks_array, resolver: Queries::Resolvers::TasksArray
  end
end
