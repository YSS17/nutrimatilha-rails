class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :sex
      t.integer :size
      t.date :date_birth
      t.integer :weight
      t.boolean :neutered
      t.references :user, null: false, foreign_key: true
      t.references :breed, null: false, foreign_key: true

      t.timestamps
    end
  end
end
