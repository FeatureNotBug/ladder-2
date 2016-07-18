class CreateForm < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.text :types
      t.text :msgs
      t.text :targets
    end
  end
end
