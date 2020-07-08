require 'rails_helper'

RSpec.describe "technologies/edit", type: :view do
  before(:each) do
    @technology = assign(:technology, Technology.create!(
      name: "MyString",
      purpose: "MyString",
      describe: "MyText",
      doc_link: "MyString",
      rating: 1
    ))
  end

  it "renders the edit technology form" do
    render

    assert_select "form[action=?][method=?]", technology_path(@technology), "post" do

      assert_select "input[name=?]", "technology[name]"

      assert_select "input[name=?]", "technology[purpose]"

      assert_select "textarea[name=?]", "technology[describe]"

      assert_select "input[name=?]", "technology[doc_link]"

      assert_select "input[name=?]", "technology[rating]"
    end
  end
end
