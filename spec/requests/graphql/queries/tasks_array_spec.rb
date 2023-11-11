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

  before 'taskを10件作成' do
    create_list(:task, 10)
  end

  it 'taskを5件返却する' do
    subject
    json = JSON.parse(response.body)
    expect(json.dig('data', 'tasksArray', 'edges').length).to eq(5)
  end
end
