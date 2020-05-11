require 'rails_helper'

# Read more details below:
# https://relishapp.com/rspec/rspec-rails/docs/request-specs/request-spec
RSpec.describe "Articles", type: :request do
  it 'should GET the articles index' do
    headers = { "ACCEPT" => "application/json" }
    get "/articles"
    expect(response.content_type).to eq("application/json; charset=utf-8")
    expect(response).to have_http_status(:ok)
  end
=begin
  it 'should POST an article' do
    headers = { "ACCEPT" => "application/json" }
    post "/widgets", :params => { :article => { build :article } }, :headers => headers
    expect(response.content_type).to eq("application/json; charset=utf-8")
    expect(response).to have_http_status(:created)
  end
=end
end
