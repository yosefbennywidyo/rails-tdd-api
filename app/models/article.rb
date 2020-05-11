class Article < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  validates :slug, presence: true, uniqueness: true

  belongs_to :user

  has_many :comments, dependent: :destroy

  # for the slug should add random number
  # slug = title + random_number(maybe add DateTime published?)
  scope :recent, -> { order(created_at: :desc) }
end
