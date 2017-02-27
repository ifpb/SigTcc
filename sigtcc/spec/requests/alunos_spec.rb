require 'rails_helper'

RSpec.describe "Alunos", type: :request do
  describe "GET /alunos" do
    it "works! (now write some real specs)" do
      get alunos_path
      expect(response).to have_http_status(200)
    end
  end
end
