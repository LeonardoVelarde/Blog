class User < ActiveRecord::Base
	has_many :posts

	def posts
		Post.all
	end
end
