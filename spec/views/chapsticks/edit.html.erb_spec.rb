require 'spec_helper'

describe "chapsticks/edit" do
  before(:each) do
    @chapstick = assign(:chapstick, stub_model(Chapstick,
      :brand => "MyString",
      :flavor => "MyString"
    ))
  end

  it "renders the edit chapstick form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", chapstick_path(@chapstick), "post" do
      assert_select "input#chapstick_brand[name=?]", "chapstick[brand]"
      assert_select "input#chapstick_flavor[name=?]", "chapstick[flavor]"
    end
  end
end
