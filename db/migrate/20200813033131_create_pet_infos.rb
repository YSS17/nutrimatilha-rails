class CreatePetInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :pet_infos do |t|
      t.string :name
      t.string :breed
      t.string :sex
      t.string :shape
      t.boolean :neutered
      t.date :date_birth
      t.float :weight
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end