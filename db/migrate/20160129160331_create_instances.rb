class CreateInstances < ActiveRecord::Migration
  def change
    create_table :instances do |t|
      t.integer :instance_id
      t.integer :run
      t.date :start_date
      t.date :end_date
      t.time :start_time
      t.time :end_time
      t.string :room

      t.timestamps null: false
    end
  end
end
