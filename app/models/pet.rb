# == Schema Information
#
# Table name: pets
#
#  id          :bigint(8)        not null, primary key
#  animal_name :string
#  animal_type :string           not null
#  owner_email :string
#  owner_name  :string
#  owner_phone :string
#  tag         :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Pet < ApplicationRecord
  validates :owner_name, presence: true
  validates :animal_type, presence: true
  validates :tag, presence: true
  validates :owner_email, presence: true, confirmation: { case_sensitive: false }
  validates :owner_email_confirmation, presence: true
  validates :owner_phone, presence: true

  def to_param
    tag
  end
end
