class WodsController < ApplicationController

  before_action :find_wod, only: [:show,:edit,:update,:destroy]

  def index
    # @wod = Wod.all.order("created_at DESC")
    @wod = Wod.all
    if params[:search]
      @wod = Wod.search(params[:search]).order("created_at DESC")
    else
      @wod = Wod.all.order("created_at DESC")
    end
  end

  def new
    @wod = current_user.wods.build
  end

  def create
    @wod = current_user.wods.build(wod_params)
    if @wod.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @wod.update(wod_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @wod.destroy
    redirect_to root_path
  end

  private

    def wod_params
      params.require(:wod).permit(:title,:details,:scaling_options)
    end

    def find_wod
      @wod = Wod.find(params[:id])
    end

end
