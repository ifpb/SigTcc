require 'rails_helper'

RSpec.describe "plano_atividades/index", type: :view do
  before(:each) do
    assign(:plano_atividades, [
      PlanoAtividade.create!(),
      PlanoAtividade.create!()
    ])
  end

  it "renders a list of plano_atividades" do
    render
  end
end
