module Queries
  module Resolvers
    class TasksArray < GraphQL::Schema::Resolver

      type Types::TaskType.connection_type, null: false

      def resolve
        Task.all.to_a
      end
    end
  end
end
