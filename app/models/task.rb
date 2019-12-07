class Task < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :note, presence: true
  belongs_to :category
  belongs_to :user
  has_many :tag_associations, dependent: :destroy
  has_many :tags, through: :tag_associations, dependent: :destroy
  self.per_page = 2
  def self.search(search)
    where("title LIKE ?", "%#{search}%")
    where("note LIKE ?", "%#{search}%")
  end
end
