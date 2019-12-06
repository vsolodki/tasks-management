class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
      :recoverable, :rememberable, :validatable
  has_many :categories, dependent: :destroy
  has_many :tags, dependent: :destroy
  has_many :tasks, dependent: :destroy
  validates :username, :email, presence: true, uniqueness: true
end
