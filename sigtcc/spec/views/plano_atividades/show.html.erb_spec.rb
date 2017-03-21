require 'rails_helper'

RSpec.describe "plano_atividades/show", type: :view do
  before(:each) do
    @plano_atividade = assign(:plano_atividade, PlanoAtividade.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
