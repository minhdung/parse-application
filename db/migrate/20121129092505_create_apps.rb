class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :name
      t.string :email
      t.string :position
      t.string :about

      t.timestamps
    end
  end
end
