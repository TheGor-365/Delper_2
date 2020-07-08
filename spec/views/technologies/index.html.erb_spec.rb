require 'rails_helper'

RSpec.describe "technologies/index", type: :view do
  before(:each) do
    assign(:technologies, [
      Technology.create!(
        name: "Name",
        purpose: "Purpose",
        describe: "MyText",
        doc_link: "Doc Link",
        rating: 2
      ),
      Technology.create!(
        name: "Name",
        purpose: "Purpose",
        describe: "MyText",
        doc_link: "Doc Link",
        rating: 2
      )
    ])
  end

  it "renders a list of technologies" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Purpose".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Doc Link".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
