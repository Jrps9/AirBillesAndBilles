class Trade < ApplicationRecord
  belongs_to :user
  belongs_to :airbille

  def myairbilles
    Airbille.where(:id == self.id)
  end

end
