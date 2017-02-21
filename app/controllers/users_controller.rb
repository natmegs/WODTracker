class UsersController < ApplicationController

  before_action :authenticate_user!
  before_action :find_user

  def profile
  end

  def viewByDate
  end

  def viewByName
    @wods = Wod.all
    if params[:search]
      @wods = Wod.search(params[:search]).order("created_at DESC")
    else
      @wods = Wod.all.order("created_at DESC")
    end
  end

  def yourWODs
  end

  private

    def find_user
      @user = current_user
    end

end
