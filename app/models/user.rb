class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
      :recoverable, :rememberable, :validatable,  password_length: 10..128
  has_many :categories, dependent: :destroy
  has_many :tags, dependent: :destroy
  has_many :tasks, dependent: :destroy
  validates :username, :email, presence: true, uniqueness: true
end
