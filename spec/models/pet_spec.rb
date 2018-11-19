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

require 'rails_helper'

RSpec.describe Pet, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
