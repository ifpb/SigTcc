require 'rails_helper'

RSpec.describe "alunos/show", type: :view do
  before(:each) do
    @aluno = assign(:aluno, Aluno.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
