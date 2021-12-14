class AddDisponibilityToAirbilles < ActiveRecord::Migration[6.1]
  def change
    add_column :airbilles, :disponibility, :boolean, default: true
  end
end
