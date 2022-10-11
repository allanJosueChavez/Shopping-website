require 'rails_helper'
describe "get all questions route", :type => :request do
  let!(:questions) {FactoryBot.create_list(:random_question, 20)}
before {get '/api/v1/questions'}
it 'returns all questions' do
    expect(JSON.parse(response.body).size).to eq(20)
  end
it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end