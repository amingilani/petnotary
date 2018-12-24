# == Schema Information
#
# Table name: pets
#
#  id               :bigint(8)        not null, primary key
#  chip_number      :string           not null
#  mixed_breed      :boolean          default(TRUE)
#  name             :string
#  primary_breed    :string
#  primary_color    :string
#  privacy_settings :integer          default(0)
#  secondary_breed  :string
#  secondary_color  :string
#  species          :integer          not null
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

  # Animal data
  animal_data_file = Rails.root.join('vendor', 'lib', 'animal_data.yaml')
  ANIMAL_DATA = YAML::load_file(animal_data_file).symbolize_keys

  ANIMAL_SPECIES = ANIMAL_DATA[:ANIMAL_SPECIES]
  DOG_BREEDS     = ANIMAL_DATA[:DOG_BREEDS]
  DOG_COLORS     = ANIMAL_DATA[:DOG_COLORS]
  CAT_BREEDS     = ANIMAL_DATA[:CAT_BREEDS]
  CAT_COLORS     = ANIMAL_DATA[:CAT_COLORS]


  belongs_to :user

  def to_param
    chip_number
  end
end
