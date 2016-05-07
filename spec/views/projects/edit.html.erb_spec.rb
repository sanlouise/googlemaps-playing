require 'rails_helper'

RSpec.describe "projects/edit", type: :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      :latitude => 1.5,
      :longitude => 1.5,
      :name => "MyString",
      :address => "MyString",
      :title => "MyString"
    ))
  end

  it "renders the edit project form" do
    render

    assert_select "form[action=?][method=?]", project_path(@project), "post" do

      assert_select "input#project_latitude[name=?]", "project[latitude]"

      assert_select "input#project_longitude[name=?]", "project[longitude]"

      assert_select "input#project_name[name=?]", "project[name]"

      assert_select "input#project_address[name=?]", "project[address]"

      assert_select "input#project_title[name=?]", "project[title]"
    end
  end
end
