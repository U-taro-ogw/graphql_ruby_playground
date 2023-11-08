# frozen_string_literal: true

module Types
  class TaskType < Types::BaseObject
    field :id, ID, null: false
    field :user_id, Integer
    field :description, String
    field :completed, Boolean
  end
end
