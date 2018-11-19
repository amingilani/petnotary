require 'rails_helper'

RSpec.describe "pets/new", type: :view do
  before(:each) do
    assign(:pet, Pet.new(
      :tag => "MyString",
      :animal_type => "MyString",
      :animal_name => "MyString",
      :owner_name => "MyString",
      :owner_email => "MyString",
      :owner_email_confirmation => "MyString",
      :owner_phone => "MyString"
    ))
  end

  it "renders new pet form" do
    render

    assert_select "form[action=?][method=?]", pets_path, "post" do

      assert_select "input[name=?]", "pet[tag]"

      assert_select "input[name=?]", "pet[animal_type]"

      assert_select "input[name=?]", "pet[animal_name]"

      assert_select "input[name=?]", "pet[owner_name]"

      assert_select "input[name=?]", "pet[owner_email]"

      assert_select "input[name=?]", "pet[owner_phone]"
    end
  end
end
