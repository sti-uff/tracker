class CreateNotificationContacts < ActiveRecord::Migration
  def change
    create_table :notification_contacts do |t|
      t.integer :project_id
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end
