class NoticeBoardsController < ApplicationController
  # before_action :find_noticeboard, only: [:show]

  def show
    @notice_board = NoticeBoard.includes(posts: :tenant).find(params[:id])
    @development = @notice_board.development.id
  end
end























  ##PREVIOUS ATTEMPT

#   def index
#     @noticeboards = NoticeBoard.all
#   end

#   def show
#     @notice_board = NoticeBoard.find(params[:id])
#     @development = Development.find(params[:development_id])
#     @notice_boards = NoticeBoard.includes(posts: :tenant).find(params[:id])
#     # unless current_user == admin || current_user == @development.employee || current_user == @development.tenant
#     #   redirect_to root_path
#     #   flash[:alert] = "fuck off"
#     # end
#   end

#   def new
#     @notice_board = NoticeBoard.new
#   end

#   def create
#     @development = Development.find(params[:id])
#     @notice_board = NoticeBoard.new
#     @notice_board.development = @development

#     if @noticeboard.save
#       redirect_to development_notice_board(@development)
#     else
#       redirect_to development_path(@development)
#     end
#   end

# private

#   # def find_noticeboard
#   #   @notice_board ||= NoticeBoard.find(params[:id])
#   # end
# end
