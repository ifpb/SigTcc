require 'rails_helper'

RSpec.describe "alunos/index", type: :view do
  before(:each) do
    assign(:alunos, [
      Aluno.create!(),
      Aluno.create!()
    ])
  end

  it "renders a list of alunos" do
    render
  end
end
