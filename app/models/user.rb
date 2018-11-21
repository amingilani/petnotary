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

  has_many :pets, inverse_of: :user, dependent: :destroy
  accepts_nested_attributes_for :pets

  validates :email, presence: true
  validates :name, presence: true
  validates :phone_primary, presence: true
  validates :phone_secondary, presence: true
  validates :postal_code, presence: true
  validates :province, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :country, presence: true
end
