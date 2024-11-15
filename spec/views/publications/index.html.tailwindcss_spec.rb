require 'rails_helper'

RSpec.describe "publications/index", type: :view do
  before(:each) do
    assign(:publications, [
      Publication.create!(
        title: "Title",
        publicaiton_text: "MyText",
        tags: "MyText",
        Category: nil,
        Writer: nil
      ),
      Publication.create!(
        title: "Title",
        publicaiton_text: "MyText",
        tags: "MyText",
        Category: nil,
        Writer: nil
      )
    ])
  end

  it "renders a list of publications" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
