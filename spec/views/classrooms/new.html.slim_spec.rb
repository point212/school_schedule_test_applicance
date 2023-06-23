require 'rails_helper'

RSpec.describe "classrooms/new", type: :view do
  before(:each) do
    assign(:classroom, Classroom.new(
      number: 1,
      address: "MyString"
    ))
  end

  it "renders new classroom form" do
    render

    assert_select "form[action=?][method=?]", classrooms_path, "post" do

      assert_select "input[name=?]", "classroom[number]"

      assert_select "input[name=?]", "classroom[address]"
    end
  end
end
