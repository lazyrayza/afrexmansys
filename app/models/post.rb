class Post < ApplicationRecord
  belongs_to :notice_board
  belongs_to :user
  validates :description, presence: true, allow_blank: false
  # after_create :broadcast_post

  def from?(some_user)
    user == some_user
  end

  # def broadcast_post
  #   ActionCable.server.broadcast("development_#{development.id}_notice_board_#{notice_board.id}", {
  #     post_partial: ApplicationController.renderer.render(
  #       partial: "posts/post",
  #       locals: { post: self, user_is_posts_author: false }
  #     ),
  #     current_user_id: tenant.id
  #   })
  # end
end

