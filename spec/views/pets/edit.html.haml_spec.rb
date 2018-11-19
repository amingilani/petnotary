require 'rails_helper'

RSpec.describe "pets/edit", type: :view do
  before(:each) do
    @pet = assign(:pet, Pet.create!(
      :tag => "MyString",
      :animal_type => "MyString",
      :animal_name => "MyString",
      :owner_name => "MyString",
      :owner_email => "MyString",
      :owner_email_confirmation => "MyString",
      :owner_phone => "MyString"
    ))
  end

  it "renders the edit pet form" do
    render

    assert_select "form[action=?][method=?]", pet_path(@pet), "post" do

      assert_select "input[name=?]", "pet[tag]"

      assert_select "input[name=?]", "pet[animal_type]"

      assert_select "input[name=?]", "pet[animal_name]"

      assert_select "input[name=?]", "pet[owner_name]"

      assert_select "input[name=?]", "pet[owner_email]"

      assert_select "input[name=?]", "pet[owner_phone]"
    end
  end
end
