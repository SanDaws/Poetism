require 'rails_helper'

RSpec.describe "publications/new", type: :view do
  before(:each) do
    assign(:publication, Publication.new(
      title: "MyString",
      publicaiton_text: "MyText",
      tags: "MyText",
      Category: nil,
      Writer: nil
    ))
  end

  it "renders new publication form" do
    render

    assert_select "form[action=?][method=?]", publications_path, "post" do

      assert_select "input[name=?]", "publication[title]"

      assert_select "textarea[name=?]", "publication[publicaiton_text]"

      assert_select "textarea[name=?]", "publication[tags]"

      assert_select "input[name=?]", "publication[Category_id]"

      assert_select "input[name=?]", "publication[Writer_id]"
    end
  end
end
