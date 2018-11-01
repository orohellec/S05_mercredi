class GossipUpdate < ActiveRecord::Migration[5.2]
  def change
    remove_column :gossips, :anonymous_gossiper, :string
  end
end
