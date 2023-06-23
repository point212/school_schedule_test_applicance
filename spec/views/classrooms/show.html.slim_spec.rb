require 'rails_helper'

RSpec.describe "classrooms/show", type: :view do
  before(:each) do
    assign(:classroom, Classroom.create!(
      number: 2,
      address: "Address"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Address/)
  end
end
