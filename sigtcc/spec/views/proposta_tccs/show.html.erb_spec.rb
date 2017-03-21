require 'rails_helper'

RSpec.describe "proposta_tccs/show", type: :view do
  before(:each) do
    @proposta_tcc = assign(:proposta_tcc, PropostaTcc.create!(
      :titulo => "Titulo"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Titulo/)
  end
end
