class NoticeBoardsController < ApplicationController
    before_action :find_noticeboard, only: [:show, :create, :update]

  def index
    @noticeboards = Noticeboard.all
  end

  def show
    @development = Development.find(params[:id])
  end

  def new
    @noticeboard = Noticeboard.new
  end

  def create
  end

  def update
    if @noticeboard.save
      redirect_to noticeboards_path
    else
      render :new
    end
  end

private

  def find_noticeboard
    @noticeboard ||= Noticeboard.find(params[:id])
  end

end
