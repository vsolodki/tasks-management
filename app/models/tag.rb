class Tag < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  belongs_to :user
  has_many :tag_associations, dependent: :destroy
  has_many :tasks, through: :tag_associations, dependent: :destroy
end
