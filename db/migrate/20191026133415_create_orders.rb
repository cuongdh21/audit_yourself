class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :tracking_id1
      t.string :tracking_id2
      t.string :tracking_id3
      t.text :response
      t.boolean :passed

      t.timestamps
    end
  end
end
