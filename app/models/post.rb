class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	validates :title, :content, :presence => true
	before_create :set_likes

	def set_likes
		self.likes = 0
	end

	def self.search(search, category)
	  if search && search != ""
	    if category && category != ""
	    	where("content like ?", "%#{search}%").where("category = '" + category + "'")
	    else
	    	where("content like ?", "%#{search}%")
	    end
	  else
	    if category && category != ""
	    	all().where("category = '" + category + "'")
	    else
	    	all()
	    end
	  end
	end
end
