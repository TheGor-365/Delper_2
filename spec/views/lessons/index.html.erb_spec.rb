require 'rails_helper'

RSpec.describe "lessons/index", type: :view do
  before(:each) do
    assign(:lessons, [
      Lesson.create!(
        technology_name: "Technology Name",
        lesson_author: "Lesson Author",
        lesson_title: "Lesson Title",
        lesson_purpose: "Lesson Purpose",
        lesson_question: "Lesson Question",
        lesson_answer: "MyText",
        lesson_body: "MyText",
        lesson_snippet: "Lesson Snippet",
        lesson_example: "Lesson Example"
      ),
      Lesson.create!(
        technology_name: "Technology Name",
        lesson_author: "Lesson Author",
        lesson_title: "Lesson Title",
        lesson_purpose: "Lesson Purpose",
        lesson_question: "Lesson Question",
        lesson_answer: "MyText",
        lesson_body: "MyText",
        lesson_snippet: "Lesson Snippet",
        lesson_example: "Lesson Example"
      )
    ])
  end

  it "renders a list of lessons" do
    render
    assert_select "tr>td", text: "Technology Name".to_s, count: 2
    assert_select "tr>td", text: "Lesson Author".to_s, count: 2
    assert_select "tr>td", text: "Lesson Title".to_s, count: 2
    assert_select "tr>td", text: "Lesson Purpose".to_s, count: 2
    assert_select "tr>td", text: "Lesson Question".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Lesson Snippet".to_s, count: 2
    assert_select "tr>td", text: "Lesson Example".to_s, count: 2
  end
end
