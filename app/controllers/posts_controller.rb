class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.create(title: params[:post][:title], description: params[:post][:description])
	end

	def show
		@post = Post.find(params[:id])
	end
end