class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :name
      t.timestamps null: false
      t.integer  :user_id
    end
  end
end