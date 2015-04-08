class WelcomeController < ApplicationController
  def index
  	@posts = Post.search(params[:search], params[:category])
  	@comments = Comment.all
  end
end
