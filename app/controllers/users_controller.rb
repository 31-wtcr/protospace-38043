class UsersController < ApplicationController
  before_action :move_to_index
  
  def show
    @user = User.find(params[:id])
  end

  private

end
