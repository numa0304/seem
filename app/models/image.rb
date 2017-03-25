class Image < ApplicationRecord
    belongs_to :stundent
    belongs_to :company
    mount_uploader :image, ImageUploader
end
