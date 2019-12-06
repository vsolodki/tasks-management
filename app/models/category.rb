class Category < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  belongs_to :user
  has_many :tasks, dependent: :destroy
end
