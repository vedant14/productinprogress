class Post < ApplicationRecord
	belongs_to :topic
	has_rich_text :body


	def self.published_by_order
		order("updated_at DESC")
	end
end
