require 'rails_helper'

RSpec.describe "Dishes", type: :request do
  describe "GET /restaurant/1/dishes" do
    it "works! (now write some real specs)" do
      get restaurant_dishes_path(1)
      expect(response).to have_http_status(200)
    end
  end
end
