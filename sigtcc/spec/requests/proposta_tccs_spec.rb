require 'rails_helper'

RSpec.describe "PropostaTccs", type: :request do
  describe "GET /proposta_tccs" do
    it "works! (now write some real specs)" do
      get proposta_tccs_path
      expect(response).to have_http_status(200)
    end
  end
end
