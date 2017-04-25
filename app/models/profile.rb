class Profile < ApplicationRecord
  belongs_to :user
  validates_associated :user
  validates :username, presence: :true
  validates :name, presence: :true,
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, :storage => :cloudinary, :path =>":id/:style/:filename"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

end
