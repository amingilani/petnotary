# == Schema Information
#
# Table name: users
#
#  id                     :bigint(8)        not null, primary key
#  address                :string
#  city                   :string
#  confirmation_sent_at   :datetime
#  confirmation_token     :string
#  confirmed_at           :datetime
#  country                :string
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :inet
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  failed_attempts        :integer          default(0), not null
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :inet
#  locked_at              :datetime
#  name                   :string
#  phone_primary          :string
#  phone_secondary        :string
#  postal_code            :string
#  privacy_settings       :integer          default(0)
#  province               :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  sign_in_count          :integer          default(0), not null
#  unconfirmed_email      :string
#  unlock_token           :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

require 'rails_helper'

RSpec.describe User, type: :model do
  it { should accept_nested_attributes_for(:pets) }

  it { should validate_presence_of :email }
  it { should validate_presence_of :name }
  it { should validate_presence_of :phone_primary }
  it { should validate_presence_of :phone_secondary }
  it { should validate_presence_of :postal_code }
  it { should validate_presence_of :province }
  it { should validate_presence_of :address }
  it { should validate_presence_of :city }
  it { should validate_presence_of :country }

  describe 'when a user is created' do
    subject { -> { create :user } }
    it { should_not raise_error }
    it { should change(User, :count).by(1) }
  end

  describe 'when a user with a pet is created' do
    subject { -> { create :user_with_pet } }
    it { should change(Pet, :count).by(1) }
  end

  describe 'when a user with 5 pets is created' do
    subject { -> { create :user_with_pets } }
    it { should change(Pet, :count).by(5) }
  end
end
