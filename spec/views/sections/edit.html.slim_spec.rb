require 'rails_helper'

RSpec.describe "sections/edit", type: :view do
  let(:section) {
    Section.create!(
      teacher_subject: nil,
      classroom: nil,
      students: nil,
      duration: 1,
      days_of_week: "MyString"
    )
  }

  before(:each) do
    assign(:section, section)
  end

  it "renders the edit section form" do
    render

    assert_select "form[action=?][method=?]", section_path(section), "post" do

      assert_select "input[name=?]", "section[teacher_subject_id]"

      assert_select "input[name=?]", "section[classroom_id]"

      assert_select "input[name=?]", "section[students_id]"

      assert_select "input[name=?]", "section[duration]"

      assert_select "input[name=?]", "section[days_of_week]"
    end
  end
end
