require 'rails_helper'

RSpec.describe "comments/index", type: :view do
  before(:each) do
    assign(:comments, [
      Comment.create!(
        Publication: nil,
        Writer: nil,
        comment: "MyText"
      ),
      Comment.create!(
        Publication: nil,
        Writer: nil,
        comment: "MyText"
      )
    ])
  end

  it "renders a list of comments" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end