require 'spec_helper'

describe "chapsticks/new" do
  before(:each) do
    assign(:chapstick, stub_model(Chapstick,
      :brand => "MyString",
      :flavor => "MyString"
    ).as_new_record)
  end

  it "renders new chapstick form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", chapsticks_path, "post" do
      assert_select "input#chapstick_brand[name=?]", "chapstick[brand]"
      assert_select "input#chapstick_flavor[name=?]", "chapstick[flavor]"
    end
  end
end
