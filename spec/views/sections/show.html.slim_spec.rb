require 'rails_helper'

RSpec.describe "sections/show", type: :view do
  before(:each) do
    assign(:section, Section.create!(
      teacher_subject: nil,
      classroom: nil,
      students: nil,
      duration: 2,
      days_of_week: "Days Of Week"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Days Of Week/)
  end
end
