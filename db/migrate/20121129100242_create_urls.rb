class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.integer :app_id
      t.string :item

      t.timestamps
    end
  end
end
