class HomeController < ApplicationController
  skip_before_action :authorize
  def index
    @menues = Menue.all
  end
end
