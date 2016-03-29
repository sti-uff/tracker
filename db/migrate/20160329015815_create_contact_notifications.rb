class CreateContactNotifications < ActiveRecord::Migration
  def change
    create_table :contact_notifications do |t|
      t.integer :notification_id
      t.integer :contact_id

      t.timestamps null: false
    end
  end
end
