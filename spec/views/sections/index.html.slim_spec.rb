require 'rails_helper'

RSpec.describe "sections/index", type: :view do
  before(:each) do
    assign(:sections, [
      Section.create!(
        teacher_subject: nil,
        classroom: nil,
        students: nil,
        duration: 2,
        days_of_week: "Days Of Week"
      ),
      Section.create!(
        teacher_subject: nil,
        classroom: nil,
        students: nil,
        duration: 2,
        days_of_week: "Days Of Week"
      )
    ])
  end

  it "renders a list of sections" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Days Of Week".to_s), count: 2
  end
end
