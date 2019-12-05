class Task < ApplicationRecord
  validates :title, :note, presence: true
  belongs_to :category
  belongs_to :user
  has_many :tag_associations, dependent: :destroy
  has_many :tags, through: :tag_associations, dependent: :destroy
end
