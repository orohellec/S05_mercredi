class GossipsController < ApplicationController
  def index
    @all_gossips = Gossip.all
  end
  def new
    @gossip = Gossip.new
  end
  def create
    params_gossip = params[:gossip]
    Gossip.create(content: params_gossip[:content], user_id: session[:auth].values[0])
    redirect_to "/gossips"
  end
  def show
    @one_gossip = Gossip.find(params[:id])
  end
  def edit
    @one_gossip = Gossip.find(params[:id])
  end
  def update
    params_gossip = params[:gossip]
    modify_gossip = Gossip.find(params[:id])
    modify_gossip.update(content: params_gossip[:content])
    redirect_to "/gossips"
  end
  def destroy
    gossip_to_delete = Gossip.find(params[:id])
    gossip_to_delete.destroy
    redirect_to "/gossips"
#    User.where(id: gossip[:user_id])[0]["username"]
  end
end
