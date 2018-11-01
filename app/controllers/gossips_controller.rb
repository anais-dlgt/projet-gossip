class GossipsController < ApplicationController

  before_action :set_gossip, only: [:show, :edit, :update, :destroy]

  def index
    @gossip = Gossip.all.order("created_at ASC")
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(gossip_params)
    puts "EHOH"
    puts @gossip
    @gossip.anonymous_gossiper = @current_user.pseudo
    puts "EHOH"
    puts @gossip
    @gossip.save
    redirect_to gossip_path(@gossip.id)
  end

  def show
  end

  def edit
  end

  def update
    @gossip.update(gossip_params)
    redirect_to gossip_path(@gossip.id)
  end

  def destroy
    if @current_user.pseudo == @gossip.anonymous_gossiper
      @gossip.destroy
      flash[:info] = "Le gossip a été supprimé avec succès"
      redirect_to gossips_path
    else
      flash[:info] = "On ne supprime pas les commentaires des autres rooooh"
      redirect_to gossip_path(@gossip.id)
    end
  end

  private

  def gossip_params
    params.require(:gossip).permit(:title, :content)
  end

  def set_gossip
    @gossip = Gossip.find(params[:id])
  end
end
