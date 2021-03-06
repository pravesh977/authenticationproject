class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_attached_file :mypicture, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :mypicture, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
