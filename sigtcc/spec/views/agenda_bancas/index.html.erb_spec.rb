require 'rails_helper'

RSpec.describe "agenda_bancas/index", type: :view do
  before(:each) do
    assign(:agenda_bancas, [
      AgendaBanca.create!(),
      AgendaBanca.create!()
    ])
  end

  it "renders a list of agenda_bancas" do
    render
  end
end
