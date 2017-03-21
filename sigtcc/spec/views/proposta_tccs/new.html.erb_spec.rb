require 'rails_helper'

RSpec.describe "proposta_tccs/new", type: :view do
  before(:each) do
    assign(:proposta_tcc, PropostaTcc.new(
      :titulo => "MyString"
    ))
  end

  it "renders new proposta_tcc form" do
    render

    assert_select "form[action=?][method=?]", proposta_tccs_path, "post" do

      assert_select "input#proposta_tcc_titulo[name=?]", "proposta_tcc[titulo]"
    end
  end
end
