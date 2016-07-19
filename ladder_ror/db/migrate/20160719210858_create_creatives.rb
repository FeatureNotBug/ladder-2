class CreateCreatives < ActiveRecord::Migration
  def change
    create_table :creatives do |t|
      t.string :name
      t.string :attachment
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
