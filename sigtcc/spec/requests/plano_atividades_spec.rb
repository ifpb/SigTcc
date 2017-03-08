require 'rails_helper'

RSpec.describe "PlanoAtividades", type: :request do
  describe "GET /plano_atividades" do
    it "works! (now write some real specs)" do
      get plano_atividades_path
      expect(response).to have_http_status(200)
    end
  end
end
