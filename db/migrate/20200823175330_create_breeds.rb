class CreateBreeds < ActiveRecord::Migration[6.0]
  def change
    create_table :breeds do |t|
      t.string :name
      t.string :size
      t.integer :medium_weight

      t.timestamps
    end
  end
end
