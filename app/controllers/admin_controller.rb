class AdminController < ApplicationController
  def index
    @total_menues = Menue.count
  end
end
