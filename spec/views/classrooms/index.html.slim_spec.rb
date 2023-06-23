require 'rails_helper'

RSpec.describe "classrooms/index", type: :view do
  before(:each) do
    assign(:classrooms, [
      Classroom.create!(
        number: 2,
        address: "Address"
      ),
      Classroom.create!(
        number: 2,
        address: "Address"
      )
    ])
  end

  it "renders a list of classrooms" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Address".to_s), count: 2
  end
end
