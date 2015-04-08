class Post < ActiveRecord::Base
	has_many :comments
	validates :title, :content, :presence => true
	before_create :set_likes

	def set_likes
		self.likes = 0
	end

	def self.search(search)
	  if search
	    where("content like ?", "%#{search}%")
	  else
	    all()
	  end
	end
end
