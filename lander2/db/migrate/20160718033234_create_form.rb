class CreateForm < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.text :types, array:true, default: []
      t.text :msgs, array:true, default: []
      t.text :targets, array:true, default: []
    end
  end
end
