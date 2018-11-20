class AddProfileFieldsToUserTable < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :phone_primary, :string
    add_column :users, :phone_secondary, :string
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :province, :string
    add_column :users, :country, :string
    add_column :users, :postal_code, :string
  end
end
