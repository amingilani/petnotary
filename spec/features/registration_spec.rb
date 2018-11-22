require 'rails_helper'

RSpec.feature 'Register a new pet', type: :feature do
  scenario 'User signs up with a new pet' do
    visit root_path
    fill_in :chip_number, with: '012345678901234'
    click_button 'Register'
    fill_in 'user_pets_attributes_0_name', with: 'Spike'
    fill_in 'Species', with: 'Dog'
    fill_in 'user_name', with: 'John Doe'
    fill_in 'Phone primary', with: '+923434343434'
    fill_in 'Phone secondary', with: '+92343434342'
    fill_in 'Address', with: '232 JT'
    fill_in 'City', with: 'Lahore'
    fill_in 'Province', with: 'Punjab'
    fill_in 'Postal code', with: '54000'
    select 'Pakistan', from: 'Country'
    fill_in 'Email', with: 'owner@example.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_button 'Register'
    expect(page).to have_text('Spike')
  end

  scenario 'User signs up without a pet' do
    visit new_user_registration_path
    fill_in 'user_name', with: 'John Doe'
    fill_in 'Phone primary', with: '+923434343434'
    fill_in 'Phone secondary', with: '+92343434342'
    fill_in 'Address', with: '232 JT'
    fill_in 'City', with: 'Lahore'
    fill_in 'Province', with: 'Punjab'
    fill_in 'Postal code', with: '54000'
    select 'Pakistan', from: 'Country'
    fill_in 'Email', with: 'owner@example.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_button 'Register'
    expect(page).to have_text('Successfully registered')
  end
end
