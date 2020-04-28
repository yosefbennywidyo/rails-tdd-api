require 'rails_helper'

# Read more details below:
# https://relishapp.com/rspec/rspec-rails/docs/request-specs/request-spec
RSpec.describe "Articles", type: :request do
  it 'should route to articles index' do
    expect(get '/articles').to route_to('articles#index')
  end
end
