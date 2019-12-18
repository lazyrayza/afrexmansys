class User < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :lease
  # has_many :units, through: :leases ##
  has_many :complaints
  has_many :reports
  has_many :posts
  # belongs_to :department
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def full_name
    first_name + " " + last_name
  end

  def not_admin
    User.where(:admin == false)
  end

  def not_employee
    User.where(:employee == false)
  end


  include PgSearch
  pg_search_scope :search_for_tenant,
                  against: [:first_name, :last_name, :contact_number, :email],
                  using: {
                    tsearch: { prefix: true }
                  }
end
