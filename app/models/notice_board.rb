class NoticeBoard < ApplicationRecord
  belongs_to :development
  has_many :posts
end
