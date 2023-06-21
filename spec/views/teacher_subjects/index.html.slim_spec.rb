require 'rails_helper'

RSpec.describe "teacher_subjects/index", type: :view do
  before(:each) do
    assign(:teacher_subjects, [
      TeacherSubject.create!(
        teacher: nil,
        subject: nil,
        level: 2
      ),
      TeacherSubject.create!(
        teacher: nil,
        subject: nil,
        level: 2
      )
    ])
  end

  it "renders a list of teacher_subjects" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end
