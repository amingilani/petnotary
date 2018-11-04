require 'rails_helper'

RSpec.feature 'organization sign up', type: :feature do
  scenario 'User creates a new organization and signs up' do
    visit '/organization/new'

    fill_in 'Organization', with: 'Acme Corp'
    fill_in 'Email', with: 'owner@example.com'
    fill_in 'Password', with: 'password'
    click_button 'Sign up'

    expect(page).to have_text('successful')
  end
end
