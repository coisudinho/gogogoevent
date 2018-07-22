class Event < ApplicationRecord
	belongs_to :user
	mount_uploader :image, ImageUploader

	validates :title, :address, :seats, :duration, :price, presence: true
end
