require 'rails_helper'

RSpec.describe "teachers/edit", type: :view do
  let(:teacher) {
    Teacher.create!(
      first_name: "MyString",
      last_name: "MyString"
    )
  }

  before(:each) do
    assign(:teacher, teacher)
  end

  it "renders the edit teacher form" do
    render

    assert_select "form[action=?][method=?]", teacher_path(teacher), "post" do

      assert_select "input[name=?]", "teacher[first_name]"

      assert_select "input[name=?]", "teacher[last_name]"
    end
  end
end
