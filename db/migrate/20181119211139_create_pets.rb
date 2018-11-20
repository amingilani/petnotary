class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :chip, null: false
      t.string :animal_type, null: false
      t.string :animal_name
      t.timestamps
    end
  end
end
