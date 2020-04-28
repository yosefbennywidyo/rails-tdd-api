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
      pp json # pp use to print json in console
      #json_data = json[:data]
      #expect(json_data.length).to eq(2)
    end
  end
end