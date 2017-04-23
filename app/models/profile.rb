class Profile < ApplicationRecord
  belongs_to :user
  validates_associated :user
  validates :username, presence: :true
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/


  def self.search(search)
    where("name LIKE ?", "%#{search}%")
    where("username LIKE ?", "%#{search}%")
  end
end
