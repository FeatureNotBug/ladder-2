class CreateAudience < ActiveRecord::Migration
  def change
    create_table :audiences do |t|
      t.string :title
      t.text :description
      t.integer :campaign_id
    end
  end
end
