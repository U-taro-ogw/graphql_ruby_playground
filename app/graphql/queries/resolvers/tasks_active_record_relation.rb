module Queries
  module Resolvers
    class TasksActiveRecordRelation < GraphQL::Schema::Resolver

      type Types::TaskType.connection_type, null: false

      def resolve
        Task.all
      end
    end
  end
end
