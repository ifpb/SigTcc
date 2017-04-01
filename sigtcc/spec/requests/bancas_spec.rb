require 'rails_helper'

RSpec.describe "Bancas", type: :request do
  describe "GET /bancas" do
    it "works! (now write some real specs)" do
      get bancas_path
      expect(response).to have_http_status(200)
    end
  end
end
