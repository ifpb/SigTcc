require 'rails_helper'

RSpec.describe "proposta_tccs/index", type: :view do
  before(:each) do
    assign(:proposta_tccs, [
      PropostaTcc.create!(
        :titulo => "Titulo"
      ),
      PropostaTcc.create!(
        :titulo => "Titulo"
      )
    ])
  end

  it "renders a list of proposta_tccs" do
    render
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
  end
end
