require 'rails_helper'

RSpec.describe "classrooms/edit", type: :view do
  let(:classroom) {
    Classroom.create!(
      number: 1,
      address: "MyString"
    )
  }

  before(:each) do
    assign(:classroom, classroom)
  end

  it "renders the edit classroom form" do
    render

    assert_select "form[action=?][method=?]", classroom_path(classroom), "post" do

      assert_select "input[name=?]", "classroom[number]"

      assert_select "input[name=?]", "classroom[address]"
    end
  end
end
