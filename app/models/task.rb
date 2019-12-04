class Task < ApplicationRecord
  validates :title, :note, presence: true
  belongs_to :category
  belongs_to :user
  has_many :tag_associations
  has_many :tags, through: :tag_associations
end
