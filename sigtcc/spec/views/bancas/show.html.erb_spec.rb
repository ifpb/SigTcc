require 'rails_helper'

RSpec.describe "bancas/show", type: :view do
  before(:each) do
    @banca = assign(:banca, Banca.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
