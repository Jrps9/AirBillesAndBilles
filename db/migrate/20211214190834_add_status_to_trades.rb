class AddStatusToTrades < ActiveRecord::Migration[6.1]
  def change
    add_column :trades, :status, :string, default: Trade::STATUSS[0]
  end
end
