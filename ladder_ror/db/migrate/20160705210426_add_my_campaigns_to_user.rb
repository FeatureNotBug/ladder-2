class AddMyCampaignsToUser < ActiveRecord::Migration
  def change
    add_column :users, :my_campaigns, :integer, array:true, default: []
  end
end
