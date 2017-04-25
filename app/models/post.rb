class Post < ApplicationRecord
  belongs_to :user
  belongs_to :topic
  has_many :comments, dependent: :destroy

  validates :content, presence: true
  validates :title, presence: true, length: {minimum: 2}

  extend FriendlyId
  friendly_id :title, use: :slugged

  # def self.search(search)
  #   where("title LIKE ?", "%#{search}%")
  #   where("content LIKE ?", "%#{search}%")
  # end
end
