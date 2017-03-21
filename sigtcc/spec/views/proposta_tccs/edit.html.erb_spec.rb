require 'rails_helper'

RSpec.describe "proposta_tccs/edit", type: :view do
  before(:each) do
    @proposta_tcc = assign(:proposta_tcc, PropostaTcc.create!(
      :titulo => "MyString"
    ))
  end

  it "renders the edit proposta_tcc form" do
    render

    assert_select "form[action=?][method=?]", proposta_tcc_path(@proposta_tcc), "post" do

      assert_select "input#proposta_tcc_titulo[name=?]", "proposta_tcc[titulo]"
    end
  end
end
