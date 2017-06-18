class FoodItem < ApplicationRecord
	validates :name, :section, :price, presence: true
	def image_url
		if remote_image_url.present?
			remote_image_url
		else
			"http://loremflickr.com/320/240/#{name.gsub(' ', '+')}"
		end
	end

	def self.search(search)
		where("name ILIKE ?", "%#{search}%")
	end
end
