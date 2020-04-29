class Article < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  validates :slug, presence: true, uniqueness: true
  # for the slug should add random number
  # slug = title + random_number(maybe add DateTime published?)
  scope :recent, -> { order(created_at: :desc) }
end
