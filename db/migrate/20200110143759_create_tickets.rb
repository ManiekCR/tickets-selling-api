class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.integer :quantity
      t.integer :price
      t.string :currency
      t.references :purchase, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
