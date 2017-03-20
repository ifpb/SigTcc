require 'rails_helper'

RSpec.describe "agenda_bancas/new", type: :view do
  before(:each) do
    assign(:agenda_banca, AgendaBanca.new())
  end

  it "renders new agenda_banca form" do
    render

    assert_select "form[action=?][method=?]", agenda_bancas_path, "post" do
    end
  end
end
