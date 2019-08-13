class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :leases, dependent: :destroy
  # has_many :units, through: :leases ##
  has_many :complaints
  has_many :reports
  has_many :posts, dependent: :destroy
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
end
