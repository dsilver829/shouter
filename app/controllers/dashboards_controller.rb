class DashboardsController < ApplicationController
  def show
    @shout = Shout.new
    @shouts = []
  end
end