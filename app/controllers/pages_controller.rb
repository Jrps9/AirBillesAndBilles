class PagesController < ApplicationController
  def home
  end

  def myadds
    @airbilles = Airbille.where(user: current_user)
  end
end
