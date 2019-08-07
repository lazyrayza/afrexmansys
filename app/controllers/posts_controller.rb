class PostsController < ApplicationController
  def create
    @post = Post.new(post_params)
    @notice_board = NoticeBoard.find(params[:id])
    @post.notice_board = @notice_board
    @post.user = current_user
    if post.save
      respond_to do |format|
        format.html { redirect_to development_notice_board_path(@development, @notice_board) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render "notice_board/show" }
        format.js
      end
    end
  end

  private

  def post_params
    params.require(:post).permit(:description)
  end
end
