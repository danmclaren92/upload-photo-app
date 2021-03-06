class Post < ActiveRecord::Base
	validates :description, presence: true
	validates :image, presence: true
	belongs_to :user
	has_attached_file :image
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
