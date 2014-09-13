class CreateFoundations < ActiveRecord::Migration
  def change
    create_table :foundations do |t|
      t.string :foundation_name
      t.string :username
      t.string :email
      t.string :password
      t.string :location
      t.string :website

      t.timestamps null: false
    end
  end
end
