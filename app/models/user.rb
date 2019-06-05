class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :leases, dependent: :destroy
  has_many :complaints
  has_many :reports
  # belongs_to :department
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def full_name
    first_name + " " + last_name
  end
end
