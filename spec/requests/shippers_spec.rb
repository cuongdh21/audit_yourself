require 'rails_helper'

RSpec.describe "Shippers", type: :request do
  describe "GET /shippers" do
    it "works! (now write some real specs)" do
      get shippers_path
      expect(response).to have_http_status(200)
    end
  end
end
