require 'rails_helper'

RSpec.describe "agenda_bancas/edit", type: :view do
  before(:each) do
    @agenda_banca = assign(:agenda_banca, AgendaBanca.create!())
  end

  it "renders the edit agenda_banca form" do
    render

    assert_select "form[action=?][method=?]", agenda_banca_path(@agenda_banca), "post" do
    end
  end
end
