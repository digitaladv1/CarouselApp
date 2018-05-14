class CreateTrackers < ActiveRecord::Migration[5.0]
  def change
    create_table :trackers do |t|
      t.integer :item_id
      t.datetime :time_last_worn

      t.timestamps
    end
  end
end
