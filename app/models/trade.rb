class Trade < ApplicationRecord
  belongs_to :user
  belongs_to :airbille
  attr_accessor :STATUSS
  STATUS = ["ouvert", "cloturé"]

  def myairbilles
    Airbille.where(:id == self.id)
  end

end
