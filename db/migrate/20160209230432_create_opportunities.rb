class CreateOpportunities < ActiveRecord::Migration
  def change
    create_table :opportunities do |t|
      t.string :stage
      t.datetime :sf_created_date
      t.string :opportunity_owner
      t.string :winning_date
      t.string :email
      t.integer :phone

      t.timestamps null: false
    end
  end
end
