class Post < ApplicationRecord
  belongs_to :noticeboard
  belongs_to :tenant, class_name: :User, foreign_key: 'tenant_id'
end
