class Post < ApplicationRecord
  belongs_to :user
  belongs_to :topic
  has_many :comments

  extend FriendlyId
  friendly_id :slug_candidate, use: :slugged

  def slug_candidate
    [
      :title,
      [:title, :content]
    ]
  end
end
