class GossipController < ApplicationController
  def new
    @gossip = Gossip.new
  end
  def create
  end
  def show
    @all_gossips = Gossip.all
  end
end
