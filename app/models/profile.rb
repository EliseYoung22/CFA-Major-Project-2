class Profile < ApplicationRecord
  belongs_to :user
  validates_associated :user

  validates :name, presence: :true
  validates :username, presence: :true
  validates :age, presence: :true



  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, :default_url => "infinity_:style.png", :storage => :cloudinary, :path =>":id/:style/:filename"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

end
