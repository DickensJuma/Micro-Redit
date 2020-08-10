class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def create
		@post = Post.new
		@post.title = params[:article][:title]
		@article.save
	end

	def destroy

	end

	def edit

	end
end
