class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :invoice_id
      t.datetime :core_updated_at
      t.string :core_status
      t.integer :core_user_id
      t.integer :core_instance_id
      t.string :opportunity_id

      t.timestamps null: false
    end
  end
end
