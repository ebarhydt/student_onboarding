class CreateEnvelopes < ActiveRecord::Migration
  def change
    create_table :envelopes do |t|
      t.string :account_name
      t.string :opportunity_id
      t.string :email
      t.string :opportunity_owner
      t.string :status
      t.string :stage
      t.string :envelope_id

      t.timestamps null: false
    end
  end
end
