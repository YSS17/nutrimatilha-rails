class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :flavor
      t.string :weight

      t.timestamps
    end
  end
end
