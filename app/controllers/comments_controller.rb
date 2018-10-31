class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @gossip = Gossip.find(params[:gossip_id])
    @comment = @gossip.comments.create(comment_params)
    redirect_to gossip_path(@gossip)
  end

  def edit
    @comment = Comment.find(params[:gossip_id])
  end

  private

  def comment_params
    params.require(:comment).permit(:anonymous_commentor, :content)
  end
end
