class WelcomeController < ApplicationController
  def index
  	@posts = Post.search(params[:search])
  	@comments = Comment.all
  end
end
