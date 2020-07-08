require 'rails_helper'

RSpec.describe "technologies/show", type: :view do
  before(:each) do
    @technology = assign(:technology, Technology.create!(
      name: "Name",
      purpose: "Purpose",
      describe: "MyText",
      doc_link: "Doc Link",
      rating: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Purpose/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Doc Link/)
    expect(rendered).to match(/2/)
  end
end
