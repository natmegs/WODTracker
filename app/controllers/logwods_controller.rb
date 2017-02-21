class LogwodsController < ApplicationController
  before_action :find_wod
  before_action :find_logwod, only: [:show, :edit, :update, :destroy]

  def new
    @logwod = Logwod.new
  end

  def create
    @logwod = Logwod.new(logwod_params)
    @logwod.wod_id = @wod.id
    @logwod.user_id = current_user.id

    if @logwod.save
      redirect_to wod_path(@wod)
    else
      render 'new'
    end

  end

  def show
  end

  def edit
  end

  def update
    if @logwod.update(logwod_params)
      redirect_to wod_logwod_path
    else
      render 'edit'
    end
  end

  def destroy
    @logwod.destroy
    redirect_to users_profile_path
  end

  private

    def find_wod
      @wod = Wod.find(params[:wod_id])
    end

    def find_logwod
      @logwod = Logwod.find(params[:id])
    end

    def logwod_params
      params.require(:logwod).permit(:scaling_used, :score, :notes, :wod_date)
    end

end
