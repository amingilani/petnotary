class ModifyPetsTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :pets, :species
    add_column :pets, :species, :integer, null: false
    add_column :pets, :primary_breed, :string
    add_column :pets, :secondary_breed, :string
    add_column :pets, :primary_color, :string
    add_column :pets, :secondary_color, :string
    add_column :pets, :mixed_breed, :boolean, default: :false
  end
end
