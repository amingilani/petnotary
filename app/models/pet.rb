# == Schema Information
#
# Table name: pets
#
#  id               :bigint(8)        not null, primary key
#  chip_number      :string           not null
#  name             :string
#  privacy_settings :integer          default(0)
#  species          :string           not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :bigint(8)
#
# Indexes
#
#  index_pets_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

class Pet < ApplicationRecord
  validates :species, presence: true
  validates :chip_number, presence: true

  belongs_to :user
  has_one :profile, through: :user

  def to_param
    tag
  end
end
