require 'rails_helper'

RSpec.describe "lessons/new", type: :view do
  before(:each) do
    assign(:lesson, Lesson.new(
      technology_name: "MyString",
      lesson_author: "MyString",
      lesson_title: "MyString",
      lesson_purpose: "MyString",
      lesson_question: "MyString",
      lesson_answer: "MyText",
      lesson_body: "MyText",
      lesson_snippet: "MyString",
      lesson_example: "MyString"
    ))
  end

  it "renders new lesson form" do
    render

    assert_select "form[action=?][method=?]", lessons_path, "post" do

      assert_select "input[name=?]", "lesson[technology_name]"

      assert_select "input[name=?]", "lesson[lesson_author]"

      assert_select "input[name=?]", "lesson[lesson_title]"

      assert_select "input[name=?]", "lesson[lesson_purpose]"

      assert_select "input[name=?]", "lesson[lesson_question]"

      assert_select "textarea[name=?]", "lesson[lesson_answer]"

      assert_select "textarea[name=?]", "lesson[lesson_body]"

      assert_select "input[name=?]", "lesson[lesson_snippet]"

      assert_select "input[name=?]", "lesson[lesson_example]"
    end
  end
end
