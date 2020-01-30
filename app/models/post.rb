class Post < ApplicationRecord
	belongs_to :topic
	has_rich_text :body
	enum status: {draft: 0, review: 1, publish: 2}

	def self.published_by_order
		order("updated_at DESC")
	end

	def self.published
		where(status: "publish")
	end
end
