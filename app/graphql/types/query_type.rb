# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :tasks_array, resolver: Queries::Resolvers::TasksArray
    field :tasks_active_record_relation, resolver: Queries::Resolvers::TasksActiveRecordRelation
  end
end
