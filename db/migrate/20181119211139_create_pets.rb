class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :tag, null: false
      t.string :animal_type, null: false
      t.string :animal_name
      t.string :owner_name
      t.string :owner_email
      t.string :owner_phone

      t.timestamps
    end
  end
end
