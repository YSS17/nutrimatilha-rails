class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.integer :zip_code
      t.string :city
      t.string :street
      t.string :complement
      t.integer :number
      t.string :neighborhood
      t.string :state

      t.timestamps
    end
  end
end
