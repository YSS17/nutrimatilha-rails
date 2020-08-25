class CreateBreeds < ActiveRecord::Migration[6.0]
  def change
    create_table :breeds do |t|
      t.string :name
      t.integer :size
      t.string :medium_weight

      t.timestamps
    end
  end
end
