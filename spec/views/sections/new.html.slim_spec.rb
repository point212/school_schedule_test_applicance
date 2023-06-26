require 'rails_helper'

RSpec.describe "sections/new", type: :view do
  before(:each) do
    assign(:section, Section.new(
      teacher_subject: nil,
      classroom: nil,
      students: nil,
      duration: 1,
      days_of_week: "MyString"
    ))
  end

  it "renders new section form" do
    render

    assert_select "form[action=?][method=?]", sections_path, "post" do

      assert_select "input[name=?]", "section[teacher_subject_id]"

      assert_select "input[name=?]", "section[classroom_id]"

      assert_select "input[name=?]", "section[students_id]"

      assert_select "input[name=?]", "section[duration]"

      assert_select "input[name=?]", "section[days_of_week]"
    end
  end
end
