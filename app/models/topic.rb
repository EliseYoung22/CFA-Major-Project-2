class Topic < ApplicationRecord
  has_many :posts

  extend FriendlyId
  friendly_id :name, use: :slugged

  # def slug_candidate
  #   [
  #     :name,
  #     [:name, :description]
  #   ]
  # end

end
