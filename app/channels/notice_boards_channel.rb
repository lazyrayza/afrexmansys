class NoticeBoardsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "development_notice_board_#{params[:notice_board_id]}"
  end
end
