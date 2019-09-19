class Post < ApplicationRecord
  belongs_to :notice_board
  belongs_to :tenant, class_name: :User, foreign_key: 'tenant_id'
  validates :description, presence: true, allow_blank: false
  # after_create :broadcast_post

  # after_commit :create_notifications, on: :create

  def from?(some_user)
    tenant == some_user
  end
end

