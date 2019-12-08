class Task < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :category, presence: false, allow_blank: true
  belongs_to :category, optional: true
  belongs_to :user
  has_many :tag_associations, dependent: :destroy
  has_many :tags, through: :tag_associations, dependent: :destroy
  self.per_page = 30


end
