class CreateSubsProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :subs_products do |t|
      t.references :pet, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :quantity
      t.string :status
      t.references :subscription, null: false, foreign_key: true

      t.timestamps
    end
  end
end
