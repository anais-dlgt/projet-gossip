class CommentsController < ApplicationController

  before_action :set_gossip, only: [:create, :edit, :update, :destroy]
  before_action :set_comment, only: [:edit, :update, :destroy]

  def new
    @comment = Comment.new
  end

  def create
    @comment = @gossip.comments.create(comment_params)
    redirect_to gossip_path(@gossip)
  end

  def edit
  end

  def update
    @comment.update(comment_params)
    redirect_to gossip_path(@gossip.id)
  end

  def destroy
    @comment.destroy
    redirect_to gossip_path(@gossip.id)
  end

  private

  def comment_params
    params.require(:comment).permit(:anonymous_commentor, :content)
  end

  def set_gossip
    @gossip = Gossip.find(params[:gossip_id])
  end

  def set_comment
    @comment = @gossip.comments.find(params[:id])
  end
  
end
