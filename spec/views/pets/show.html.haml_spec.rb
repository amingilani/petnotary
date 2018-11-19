require 'rails_helper'

RSpec.describe "pets/show", type: :view do
  before(:each) do
    @pet = assign(:pet, Pet.create!(
      :tag => "Tag",
      :animal_type => "Animal Type",
      :animal_name => "Animal Name",
      :owner_name => "Owner Name",
      :owner_email => "Owner Email",
      :owner_email_confirmation => "Owner Email",
      :owner_phone => "Owner Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Tag/)
    expect(rendered).to match(/Animal Type/)
    expect(rendered).to match(/Animal Name/)
    expect(rendered).to match(/Owner Name/)
    expect(rendered).to match(/Owner Email/)
    expect(rendered).to match(/Owner Phone/)
  end
end
