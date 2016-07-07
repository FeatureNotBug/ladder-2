class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :msg
      t.integer :campaign_id
    end
  end
end
