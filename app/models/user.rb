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

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :timeoutable, :trackable

  has_many :pets
  has_one :profile

  accepts_nested_attributes_for :pets

  validates_presence_of :email
  validates_presence_of :name
  validates_presence_of :phone_primary
  validates_presence_of :phone_secondary
  validates_presence_of :postal_code
  validates_presence_of :province
  validates_presence_of :address
  validates_presence_of :city
  validates_presence_of :country
end
