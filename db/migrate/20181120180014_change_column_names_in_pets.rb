class ChangeColumnNamesInPets < ActiveRecord::Migration[5.2]
  def change
    rename_column :pets, :chip, :chip_number
    rename_column :pets, :animal_type, :species
    rename_column :pets, :animal_name, :name
  end
end
