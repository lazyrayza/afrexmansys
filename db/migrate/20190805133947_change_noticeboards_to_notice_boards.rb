class ChangeNoticeboardsToNoticeBoards < ActiveRecord::Migration[5.2]
  def change
    rename_table :noticeboards, :notice_boards
  end
end
