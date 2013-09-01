class ShoutsController < ApplicationController
  def create
    shout = current_user.shouts.build(shout_parameters)
    shout.save
    redirect_to dashboard_path
  end

  def show
    @shout = Shout.find(params[:id])
  end

  private

  def shout_parameters
    params.require(:shout).permit(:body)
  end
end