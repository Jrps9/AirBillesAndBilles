class CreateAirbilles < ActiveRecord::Migration[6.1]
  def change
    create_table :airbilles do |t|
      t.string :name
      t.string :description
      t.string :couleur
      t.string :style
      t.integer :age

      t.timestamps
    end
  end
end
