require 'rails_helper'

RSpec.describe "plano_atividades/new", type: :view do
  before(:each) do
    assign(:plano_atividade, PlanoAtividade.new())
  end

  it "renders new plano_atividade form" do
    render

    assert_select "form[action=?][method=?]", plano_atividades_path, "post" do
    end
  end
end
