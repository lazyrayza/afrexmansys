class DevelopmentsController < ApplicationController
  before_action :find_development, only: [:show, :update, :destroy, :edit, :create]

  def index
    @developments = Development.all
  end

  def show
    @units = Unit.where(development_id: @development.id)
    # @notice_board = NoticeBoard.where(development_id: @development.id)
  end

  def new
    @development = Development.new
  end

  def create
    if @development.save(dev_params)
      respond_to do |format|
        format.html { redirect_to development_path(@development) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.js
      end
    end
  end

  def edit
  end

  def update
    if @development.update(dev_params)
      respond_to do |format|
        format.html { redirect_to development_path(@development) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.js
      end
    end
  end

private

  def dev_params
    params.require(:development).permit(:name, :photo, :address, :gym, :swimming_pool, :sauna_and_steam, :generator, :photo)
  end

  def find_development
    @development ||= Development.find(params[:id])
  end


end
