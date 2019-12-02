class Category < ApplicationRecord
  validates :title, presence: true
  belongs_to :user
  has_many :tasks
end
