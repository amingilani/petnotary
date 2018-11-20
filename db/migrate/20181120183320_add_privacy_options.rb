class AddPrivacyOptions < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :privacy_settings, :integer, default: 0
    add_column :users, :privacy_settings, :integer, default: 0
  end
end
