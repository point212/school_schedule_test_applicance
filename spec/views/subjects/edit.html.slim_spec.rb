require 'rails_helper'

RSpec.describe "subjects/edit", type: :view do
  let(:subject) {
    Subject.create!(
      name: "MyString",
      description: "MyText"
    )
  }

  before(:each) do
    assign(:subject, subject)
  end

  it "renders the edit subject form" do
    render

    assert_select "form[action=?][method=?]", subject_path(subject), "post" do

      assert_select "input[name=?]", "subject[name]"

      assert_select "textarea[name=?]", "subject[description]"
    end
  end
end
