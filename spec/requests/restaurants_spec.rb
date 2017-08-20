require 'rails_helper'

RSpec.describe "Restaurants", type: :request do
  describe "GET restaurants#index" do
    it "works!" do
      get root_path
      expect(response).to have_http_status(200)
    end
  end
end
