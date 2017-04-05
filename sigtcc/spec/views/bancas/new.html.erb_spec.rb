require 'rails_helper'

RSpec.describe "bancas/new", type: :view do
  before(:each) do
    assign(:banca, Banca.new())
  end

  it "renders new banca form" do
    render

    assert_select "form[action=?][method=?]", bancas_path, "post" do
    end
  end
end
