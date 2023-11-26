require 'rails_helper'

RSpec.describe 'graphql currentUser' do
  subject { post graphql_path, params: { query: query} }

  let(:query) do
    <<~QUERY
      {
        tasksArray(first: 5) {
          edges {
            cursor
            node {
              id
            }
          }
        }
      }
    QUERY
  end

  before 'taskを100,000件作成' do
    attr = (1..100000).map { { description: 'a', created_at: Time.current, updated_at: Time.current } }
    Task.insert_all(attr)
  end

  it 'taskを5件返却する' do
    subject
    json = JSON.parse(response.body)
    expect(json.dig('data', 'tasksArray', 'edges').length).to eq(5)
  end
end
