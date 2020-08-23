class CreateSubscriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :subscriptions do |t|
      t.references :user, null: false, foreign_key: true
      t.string :delivery_time
      t.price :order_price
      t.string :payment_gateway
      t.string :status

      t.timestamps
    end
  end
end
