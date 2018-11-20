require 'rails_helper'

RSpec.feature 'Find a pet', type: :feature do
  scenario 'User creates a new organization and signs up' do
    # after signing in
    visit '/pets'

    fill_in 'Tag', with: '012345678901234'
    click_button 'Find'

    expect(page.current_path).to eq pets_path(tag: '012345678901234')
  end
end
