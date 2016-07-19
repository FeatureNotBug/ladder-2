class CreateAudience < ActiveRecord::Migration
  def change
    create_table :audiences do |t|
      t.string :title
      t.text :description
      t.integer :campaign_id
      t.integer :user_id
    end
  end
end
