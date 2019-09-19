class NoticeBoardsChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "development#{params[:development_id]}_notice_board_#{params[:notice_board_id]}"
  end
end
