class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :city
      t.integer :number
      t.integer :CEP
      t.string :state
      t.string :street
      t.string :neighborhood
      t.string :additional_info

      t.timestamps
    end
  end
end
