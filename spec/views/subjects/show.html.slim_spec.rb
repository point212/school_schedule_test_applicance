require 'rails_helper'

RSpec.describe "subjects/show", type: :view do
  before(:each) do
    assign(:subject, Subject.create!(
      name: "Name",
      description: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
