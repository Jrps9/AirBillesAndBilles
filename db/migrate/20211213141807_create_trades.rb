class CreateTrades < ActiveRecord::Migration[6.1]
  def change
    create_table :trades do |t|
      t.references :user, null: false, foreign_key: true
      t.references :airbille, null: false, foreign_key: true
      t.date :trade_date
      t.integer :trade_value

      t.timestamps
    end
  end
end
