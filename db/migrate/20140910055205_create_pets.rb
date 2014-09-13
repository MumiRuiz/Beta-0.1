class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :pet_name
      t.integer :pet_age
      t.string :pet_type
      t.string :pet_breed
      t.string :pet_gender
      t.string :pet_size
      t.string :pet_special_needs
      t.string :pet_household_match

      t.timestamps null: false
    end
  end
end
