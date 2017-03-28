require 'rails_helper'

RSpec.describe "bancas/edit", type: :view do
  before(:each) do
    @banca = assign(:banca, Banca.create!())
  end

  it "renders the edit banca form" do
    render

    assert_select "form[action=?][method=?]", banca_path(@banca), "post" do
    end
  end
end
