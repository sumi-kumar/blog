class CommentsController < ApplicationController
  def create
  	@post=post.find(params[:post_id])
  	@comment=@post.comments.build(params[:comment])
  	@comment.save
  	redirect_to @post
  end

  def destroy
  end
end
