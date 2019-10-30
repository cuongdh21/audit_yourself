class CreateShippers < ActiveRecord::Migration[6.0]
  def change
    create_table :shippers do |t|
      t.string :client_id
      t.string :client_secret
      t.text :response
      t.boolean :passed

      t.timestamps
    end
  end
end
