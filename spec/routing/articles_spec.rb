require 'rails_helper'

# Controller specs will continue to be supported until at least version 4.0
# http://rspec.info/blog/2016/07/rspec-3-5-has-been-released/#rails-support-for-rails-5
describe 'article routes' do
  it 'should route to articles index' do
    expect(get '/articles').to route_to('articles#index')
  end

  it 'should route to articles show' do
    expect(get '/articles/1').to route_to('articles#show', id: '1')
  end

  it 'should route to articles create' do
    expect(post '/articles').to route_to('articles#create')
  end
end