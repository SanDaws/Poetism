require 'rails_helper'

RSpec.describe "publications/edit", type: :view do
  let(:publication) {
    Publication.create!(
      title: "MyString",
      publicaiton_text: "MyText",
      tags: "MyText",
      Category: nil,
      Writer: nil
    )
  }

  before(:each) do
    assign(:publication, publication)
  end

  it "renders the edit publication form" do
    render

    assert_select "form[action=?][method=?]", publication_path(publication), "post" do

      assert_select "input[name=?]", "publication[title]"

      assert_select "textarea[name=?]", "publication[publicaiton_text]"

      assert_select "textarea[name=?]", "publication[tags]"

      assert_select "input[name=?]", "publication[Category_id]"

      assert_select "input[name=?]", "publication[Writer_id]"
    end
  end
end
