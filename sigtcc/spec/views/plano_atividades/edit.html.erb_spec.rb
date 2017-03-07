require 'rails_helper'

RSpec.describe "plano_atividades/edit", type: :view do
  before(:each) do
    @plano_atividade = assign(:plano_atividade, PlanoAtividade.create!())
  end

  it "renders the edit plano_atividade form" do
    render

    assert_select "form[action=?][method=?]", plano_atividade_path(@plano_atividade), "post" do
    end
  end
end
