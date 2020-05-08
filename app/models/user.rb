class User < ApplicationRecord
  validates :login, presence: true, uniqueness: true
  validates :provider, presence: true
  #validates :access_token, presence: true, uniqueness: true

  has_many :article, dependent: :destroy

  has_one :access_token, dependent: :destroy
end
