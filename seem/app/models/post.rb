class Post < ApplicationRecord
	belongs_to :student
	# mount_uploader :image, ImageUploader
end
