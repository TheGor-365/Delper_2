require 'rails_helper'

RSpec.describe "lessons/show", type: :view do
  before(:each) do
    @lesson = assign(:lesson, Lesson.create!(
      technology_name: "Technology Name",
      lesson_author: "Lesson Author",
      lesson_title: "Lesson Title",
      lesson_purpose: "Lesson Purpose",
      lesson_question: "Lesson Question",
      lesson_answer: "MyText",
      lesson_body: "MyText",
      lesson_snippet: "Lesson Snippet",
      lesson_example: "Lesson Example"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Technology Name/)
    expect(rendered).to match(/Lesson Author/)
    expect(rendered).to match(/Lesson Title/)
    expect(rendered).to match(/Lesson Purpose/)
    expect(rendered).to match(/Lesson Question/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Lesson Snippet/)
    expect(rendered).to match(/Lesson Example/)
  end
end
