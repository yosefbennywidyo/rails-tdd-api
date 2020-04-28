require 'rails_helper'

describe ArticlesController do
  describe 'index' do
    it 'should return success response' do
      get :index
      expect(response).to have_http_status(:ok)
    end
    it 'should return proper JSON' do
      create_list :article, 2
      get :index
      json = JSON.parse(response.body)
      #pp json # pp use to print json in console
      json_data = json['data']
      expect(json_data.length).to eq(2)
      expect(json_data[0]['attributes']).to eq({
        "title" => "My article title 1",
        "content" => "My content article 1",
        "slug" => "my-article-title-1"
      })
      expect(json_data[1]['attributes']).to eq({
        "title" => "My article title 2",
        "content" => "My content article 2",
        "slug" => "my-article-title-2"
      })
    end
  end
end