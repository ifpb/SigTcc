require 'rails_helper'

RSpec.describe "agenda_bancas/show", type: :view do
  before(:each) do
    @agenda_banca = assign(:agenda_banca, AgendaBanca.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
