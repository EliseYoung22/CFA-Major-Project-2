class Topic < ApplicationRecord
  has_many :posts, dependent: :destroy

  extend FriendlyId
  friendly_id :name, use: :slugged

  has_attached_file :cover_art, styles: { medium: "512x512>", thumb: "100x100>" }, :default_url => "/infinity.png", :storage => :cloudinary, :path => ":id/:style/:filename"
  validates_attachment_content_type :cover_art, content_type: /\Aimage\/.*\z/

end
