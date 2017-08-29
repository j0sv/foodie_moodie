require 'rails_helper'

RSpec.describe Api::V1::RestaurantsController, type: :request do

  describe 'GET /v1/restaurants' do
    let!(:restaurant_1) { create(:restaurant, name: 'First Joint') }
    let!(:restaurant_2) { create(:restaurant, name: 'Second Joint') }

    before do
      get '/api/v1/restaurants'
    end

    it 'should respond with http code 200' do
      expect(response.status).to eq 200
    end

    it 'should return json with restaurants collection' do
      expected_response = eval(file_fixture('restaurants_index.rb').read)
      expect(response_json).to eq JSON.parse(expected_response.to_json)
    end

    it 'restaurants key should return correct number of objects' do
      expect(response_json['restaurants'].size).to eq(2)
    end
  end

  describe 'GET /v1/restaurants/1' do
    let!(:restaurant) { create(:restaurant) }
    let!(:dish) { create(:dish, title: 'dish1', restaurant: restaurant) }
    let!(:dish2) { create(:dish, title: 'dish2', restaurant: restaurant) }
    let!(:dish3) { create(:dish, title: 'dish3', restaurant: restaurant) }


    it 'should return json with restaurant, menus and dishes on show' do
      get "/api/v1/restaurants/#{restaurant.id}"

      expected_response = eval(file_fixture('restaurants_show.rb').read)
      expect(response_json).to eq JSON.parse(expected_response.to_json)
    end

    context 'RecordNotFound' do
      before do
        get '/api/v1/restaurants/555'
      end

      it 'should respond with http code 422' do
        expect(response.status).to eq 422
      end

      it 'should return error message' do
        expected_response = {error: 'Couldn\'t find Restaurant with \'id\'=555'}
        expect(response_json).to eq JSON.parse(expected_response.to_json)
      end

    end


  end
end