require 'rails_helper'

RSpec.describe "alunos/new", type: :view do
  before(:each) do
    assign(:aluno, Aluno.new())
  end

  it "renders new aluno form" do
    render

    assert_select "form[action=?][method=?]", alunos_path, "post" do
    end
  end
end
