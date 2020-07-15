class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes

  validates :username, presence: true
  validates :content, presence: true
end
