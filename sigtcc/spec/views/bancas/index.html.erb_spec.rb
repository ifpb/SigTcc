require 'rails_helper'

RSpec.describe "bancas/index", type: :view do
  before(:each) do
    assign(:bancas, [
      Banca.create!(),
      Banca.create!()
    ])
  end

  it "renders a list of bancas" do
    render
  end
end
