require 'rails_helper'

RSpec.describe "technologies/new", type: :view do
  before(:each) do
    assign(:technology, Technology.new(
      name: "MyString",
      purpose: "MyString",
      describe: "MyText",
      doc_link: "MyString",
      rating: 1
    ))
  end

  it "renders new technology form" do
    render

    assert_select "form[action=?][method=?]", technologies_path, "post" do

      assert_select "input[name=?]", "technology[name]"

      assert_select "input[name=?]", "technology[purpose]"

      assert_select "textarea[name=?]", "technology[describe]"

      assert_select "input[name=?]", "technology[doc_link]"

      assert_select "input[name=?]", "technology[rating]"
    end
  end
end
