class Topic < ApplicationRecord
  has_many :posts, dependent: :destroy

  extend FriendlyId
  friendly_id :name, use: :slugged

  # def slug_candidate
  #   [
  #     :name,
  #     [:name, :description]
  #   ]
  # end

end
